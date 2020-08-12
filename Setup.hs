{-# LANGUAGE CPP               #-}
{-# LANGUAGE FlexibleInstances #-}

#ifndef MIN_VERSION_Cabal
#define MIN_VERSION_Cabal(major1,major2,minor) 0
#endif

import Distribution.PackageDescription
import Distribution.Simple
import Distribution.Simple.Command
import Distribution.Simple.LocalBuildInfo
import Distribution.Simple.PreProcess
import Distribution.Simple.Program
import Distribution.Simple.Setup
import Distribution.Simple.Utils                                    hiding ( isInfixOf )
import Distribution.System
import Distribution.Verbosity

#if MIN_VERSION_Cabal(1,25,0)
import Distribution.PackageDescription.PrettyPrint
import Distribution.Version
#endif
#if MIN_VERSION_Cabal(2,2,0)
import Distribution.PackageDescription.Parsec
#else
import Distribution.PackageDescription.Parse
#endif

import Foreign.CUDA.Path
import System.Directory
import System.FilePath
import Text.Printf
import Prelude


-- Configuration
-- -------------

customBuildInfoFilePath :: FilePath
customBuildInfoFilePath = "cusolver" <.> "buildinfo"

generatedBuildInfoFilePath :: FilePath
generatedBuildInfoFilePath = customBuildInfoFilePath <.> "generated"


staticLibs :: Platform -> [String]
staticLibs platform@(Platform _arch os) =
  case os of
    Windows -> dynamicLibs platform
    _       -> ["cusolver_static", "culibos", "cudart_static", "pthread", "dl"]

dynamicLibs :: Platform -> [String]
dynamicLibs _ = ["cusolver"]


-- Build setup
-- -----------

main :: IO ()
main = defaultMainWithHooks customHooks
  where
    readHook get_verbosity args flags = do
        noExtraFlags args
        getHookedBuildInfo (fromFlag (get_verbosity flags))

    preprocessors = hookedPreProcessors simpleUserHooks

    -- Our readHook implementation uses our getHookedBuildInfo. We can't rely on
    -- cabal's autoconfUserHooks since they don't handle user overwrites to
    -- buildinfo like we do.
    --
    customHooks =
      simpleUserHooks
        { preBuild            = preBuildHook -- not using 'readHook' here because 'build' takes extra args
        , preClean            = readHook cleanVerbosity
        , preCopy             = readHook copyVerbosity
        , preInst             = readHook installVerbosity
        , preHscolour         = readHook hscolourVerbosity
        , preHaddock          = readHook haddockVerbosity
        , preReg              = readHook regVerbosity
        , preUnreg            = readHook regVerbosity
        , postConf            = postConfHook
        , hookedPreProcessors = ("chs", pp_c2hs) : filter (\x -> fst x /= "chs") preprocessors
        }

    -- The hook just loads the HookedBuildInfo generated by postConfHook, unless
    -- there is user-provided info that overwrites it.
    --
    preBuildHook :: Args -> BuildFlags -> IO HookedBuildInfo
    preBuildHook _ flags = getHookedBuildInfo $ fromFlag $ buildVerbosity flags

    -- The hook scans system in search for CUDA Toolkit. If the toolkit is not
    -- found, an error is raised. Otherwise the toolkit location is used to
    -- create a `cuda.buildinfo.generated` file with all the resulting flags.
    --
    postConfHook :: Args -> ConfigFlags -> PackageDescription -> LocalBuildInfo -> IO ()
    postConfHook args flags pkg_descr lbi = do
      let
          verbosity       = fromFlagOrDefault normal (configVerbosity flags)
          profile         = fromFlagOrDefault False  (configProfLib flags)
          currentPlatform = hostPlatform lbi
          compilerId_     = compilerId (compiler lbi)
      --
      noExtraFlags args
      generateAndStoreBuildInfo verbosity profile currentPlatform compilerId_ generatedBuildInfoFilePath
      --
      actualBuildInfoToUse <- getHookedBuildInfo verbosity
      let pkg_descr' = updatePackageDescription actualBuildInfoToUse pkg_descr
      postConf simpleUserHooks args flags pkg_descr' lbi


-- Generates build info with flags needed for CUDA Toolkit to be properly
-- visible to underlying build tools.
--
libraryBuildInfo :: Bool -> Platform -> Version -> IO HookedBuildInfo
libraryBuildInfo profile platform@(Platform arch os) ghcVersion = do
  let
      -- options for GHC
      extraLibDirs'     = [ cudaLibraryPath ]
      ccOptions'        = [ "-I" ++ cudaIncludePath ]
      ldOptions'        = [ "-L" ++ cudaLibraryPath ]
      ghcOptions        = map ("-optc"++) ccOptions'
                       ++ map ("-optl"++) ldOptions'
                       ++ if os /= Windows && not profile
                            then map ("-optl-Wl,-rpath,"++) extraLibDirs'
                            else []

      extraLibs'        = staticLibs platform
      extraGHCiLibs'    = dynamicLibs platform

      -- options or c2hs
      archFlag          = case arch of
                            I386   -> "-m32"
                            X86_64 -> "-m64"
                            _      -> ""
      emptyCase         = ["-DUSE_EMPTY_CASE" | versionBranch ghcVersion >= [7,8]]
      blocksExtension   = [ "-U__BLOCKS__" | os == OSX ]
      c2hsOptions       = unwords $ map ("--cppopts="++) ("-E" : archFlag : emptyCase ++ blocksExtension)
      c2hsExtraOptions  = ("x-extra-c2hs-options", c2hsOptions)

      addSystemSpecificOptions :: BuildInfo -> IO BuildInfo
      addSystemSpecificOptions bi =
        case os of
          _ -> return bi

  buildInfo' <- addSystemSpecificOptions $ emptyBuildInfo
    { ccOptions      = ccOptions'
    , ldOptions      = ldOptions'
    , extraLibs      = extraLibs'
    , extraGHCiLibs  = extraGHCiLibs'
    , extraLibDirs   = extraLibDirs'
#if MIN_VERSION_Cabal(3,0,0)
    , options        = PerCompilerFlavor (if os /= Windows then ghcOptions else []) []
#else
    , options        = [(GHC, ghcOptions) | os /= Windows]
#endif
    , customFieldsBI = [c2hsExtraOptions]
    }

  return (Just buildInfo', [])

generateAndStoreBuildInfo :: Verbosity -> Bool -> Platform -> CompilerId -> FilePath -> IO ()
generateAndStoreBuildInfo verbosity profile platform (CompilerId _ghcFlavor ghcVersion) path =
  storeHookedBuildInfo verbosity path =<< libraryBuildInfo profile platform ghcVersion

storeHookedBuildInfo :: Verbosity -> FilePath -> HookedBuildInfo -> IO ()
storeHookedBuildInfo verbosity path hbi = do
  notice verbosity $ "Storing parameters to " ++ path
  writeHookedBuildInfo path hbi


-- Reads user-provided `cuda.buildinfo` if present, otherwise loads `cuda.buildinfo.generated`
-- Outputs message informing about the other possibility.
-- Calls die when neither of the files is available.
-- (generated one should be always present, as it is created in the post-conf step)
--
getHookedBuildInfo :: Verbosity -> IO HookedBuildInfo
getHookedBuildInfo verbosity = do
  doesCustomBuildInfoExists <- doesFileExist customBuildInfoFilePath
  if doesCustomBuildInfoExists
    then do
      notice verbosity $ printf "The user-provided buildinfo from file %s will be used. To use default settings, delete this file.\n" customBuildInfoFilePath
      readHookedBuildInfo verbosity customBuildInfoFilePath
    else do
      doesGeneratedBuildInfoExists <- doesFileExist generatedBuildInfoFilePath
      if doesGeneratedBuildInfoExists
        then do
          notice verbosity $ printf "Using build information from '%s'.\n" generatedBuildInfoFilePath
          notice verbosity $ printf "Provide a '%s' file to override this behaviour.\n" customBuildInfoFilePath
          readHookedBuildInfo verbosity generatedBuildInfoFilePath
        else
          die' verbosity $ printf "Unexpected failure. Neither the default %s nor custom %s exist.\n" generatedBuildInfoFilePath customBuildInfoFilePath


-- Replicate the default C2HS preprocessor hook here, and inject a value for
-- extra-c2hs-options, if it was present in the buildinfo file
--
-- This is largely copied from Distribution.Simple.PreProcess, with some hacks
-- to make it work with different versions of Cabal-the-library.
--
class PPC2HS f where
  pp_c2hs :: f

instance PPC2HS (BuildInfo -> LocalBuildInfo -> ComponentLocalBuildInfo -> PreProcessor) where
  pp_c2hs bi lbi _ = pp_c2hs bi lbi

instance PPC2HS (BuildInfo -> LocalBuildInfo -> PreProcessor) where
  pp_c2hs bi lbi =
    PreProcessor
      { platformIndependent = False
      , runPreProcessor     = \(inBaseDir, inRelativeFile)
                               (outBaseDir, outRelativeFile) verbosity ->
          runDbProgram verbosity c2hsProgram (withPrograms lbi) . filter (not . null) $
            maybe [] words (lookup "x-extra-c2hs-options" (customFieldsBI bi))
            ++ ["--include=" ++ outBaseDir]
            ++ ["--cppopts=" ++ opt | opt <- getCppOptions bi lbi]
            ++ ["--output-dir=" ++ outBaseDir,
                "--output=" ++ outRelativeFile,
                inBaseDir </> inRelativeFile]
      }

getCppOptions :: BuildInfo -> LocalBuildInfo -> [String]
getCppOptions bi lbi
    = hcDefines (compiler lbi)
   ++ ["-I" ++ dir | dir <- includeDirs bi]
   ++ [opt | opt@('-':c:_) <- ccOptions bi, c `elem` "DIU"]

hcDefines :: Compiler -> [String]
hcDefines comp =
  case compilerFlavor comp of
    GHC  -> ["-D__GLASGOW_HASKELL__=" ++ versionInt version]
    JHC  -> ["-D__JHC__=" ++ versionInt version]
    NHC  -> ["-D__NHC__=" ++ versionInt version]
    Hugs -> ["-D__HUGS__"]
    _    -> []
  where version = compilerVersion comp

-- TODO: move this into the compiler abstraction
-- FIXME: this forces GHC's crazy 4.8.2 -> 408 convention on all the other
-- compilers. Check if that's really what they want.
versionInt :: Version -> String
versionInt v =
  case versionBranch v of
    []      -> "1"
    [n]     -> show n
    n1:n2:_ -> printf "%d%02d" n1 n2

#if MIN_VERSION_Cabal(1,25,0)
versionBranch :: Version -> [Int]
versionBranch = versionNumbers
#endif

#if !MIN_VERSION_Cabal(2,0,0)
die' :: Verbosity -> String -> IO a
die' _ = die
#endif

