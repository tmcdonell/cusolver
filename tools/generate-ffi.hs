#!/usr/bin/env runhaskell
{-# LANGUAGE LambdaCase #-}
{-# OPTIONS_GHC -fno-warn-unused-top-binds #-}
-- vim: filetype=haskell
--
-- Generate c2hs FFI binding hooks
--
-- Based on: https://github.com/Rufflewind/blas-hs/blob/f8e90b26bc9865618802dce9ccf21fc2b5c032be/tools/generate-ffi
--
module Main (main) where

import Data.Char                                                    ( toUpper )
import Data.Functor                                                 ( (<$>) )
import Data.List                                                    ( intercalate )
import Data.Monoid                                                  ( (<>) )
import Text.Printf                                                  ( printf )


main :: IO ()
main = do
  let
      -- module headers
      docs :: String -> [String]
      docs r  = [ "For more information see the cuSolver function reference:"
                , ""
                , printf "<http://docs.nvidia.com/cuda/cusolver/index.html#%s-reference>" r
                , ""
                ]

      -- extra module exports
      d1exp   = [ "Handle"
                , "Fill(..)"
                , "Side(..)"
                ]
      d2exp   = [ "Handle"
                , "Fill(..)"
                , "Side(..)"
                , "Operation(..)"
                , "EigMode(..)"
                , "EigType(..)"
                ]
  --
  mkC2HS "Dense" "Linear" (docs "cuds-linearsolver") d1exp
    [(Nothing,   funs_denseLinear)
    ,(Just 8000, funs_denseLinear_cuda80)
    ]

  mkC2HS "Dense" "Eigenvalue" (docs "cuds-eigensolver") d2exp
    [(Nothing,   funs_denseEigen)
    ,(Just 8000, funs_denseEigen_cuda80)
    ]

mkC2HS :: String -> String -> [String] -> [String] -> [(Maybe Int, [FunGroup])] -> IO ()
mkC2HS grp mdl docs exps funs =
  let exts    = [ "CPP"
                , "ForeignFunctionInterface"
                ]
      name    = [ "Foreign", "CUDA", "Solver", grp, mdl ]
      path    = intercalate "/" name ++ ".chs"
      imps    = [ "Data.Complex"
                , "Foreign"
                , "Foreign.C"
                , "Foreign.Storable.Complex ()"
                , "Foreign.CUDA.Ptr"
                , "Foreign.CUDA.Solver." ++ grp ++ ".Context"
                , "Foreign.CUDA.Solver.Error"
                , "Foreign.CUDA.Solver.Internal.C2HS"
                , "Foreign.CUDA.Solver.Internal.Types"
                ]
      body    = "{-# INLINE useDevP #-}"
              : "useDevP :: DevicePtr a -> Ptr b"
              : "useDevP = useDevicePtr . castDevPtr"
              : ""
              : "{-# INLINE useHostP #-}"
              : "useHostP :: HostPtr a -> Ptr b"
              : "useHostP = useHostPtr . castHostPtr"
              : ""
              : content

      mkFuns (Nothing, fg) = map mkFun fg
      mkFuns (Just v,  fg) = printf "#if CUDA_VERSION >= %d" v
                           : map mkFun fg
                          ++ "#else"
                           : map (mkDummyFun (fromIntegral v / 1000)) fg
                          ++ "#endif"
                           : []

      fis     = map (\(r,f) -> (r, funInsts Unsafe f)) funs
      exps'   = exps ++ concatMap (map cfName . snd) fis
      content = concatMap mkFuns fis
  in
  writeFile path $ mkModule exts name docs exps' imps body


mkModule
    :: [String]       -- ^ extensions
    -> [String]       -- ^ module name segments
    -> [String]       -- ^ module documentation
    -> [String]       -- ^ exports
    -> [String]       -- ^ imports
    -> [String]       -- ^ module contents
    -> String
mkModule exts name docs exps imps body =
  unlines
    $ "--"
    : "-- This module is auto-generated. Do not edit directly."
    : "--"
    : ""
    : map (printf "{-# LANGUAGE %s #-}") exts
   ++ "{-# OPTIONS_GHC -fno-warn-unused-imports #-}"
    : "{-# OPTIONS_GHC -fno-warn-unused-binds #-}"
    : "-- |"
    :("-- Module      : " ++ intercalate "." name)
    : "-- Copyright   : [2017] Trevor L. McDonell"
    : "-- License     : BSD3"
    : "--"
    : "-- Maintainer  : Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>"
    : "-- Stability   : experimental"
    : "-- Portability : non-portable (GHC extensions)"
    : "--"
    : map (\x -> if null x then "--" else "-- " ++ x) docs
   ++ ""
    : printf "module %s (\n" (intercalate "." name)
    : map (\x -> if head x == '#' then x else printf "  %s," x) exps
   ++ printf "\n) where"
    : ""
    : map (printf "import %s") imps
   ++ ""
    : "#include \"cbits/stubs.h\""
    : "{# context lib=\"cusolver\" #}"
    : ""
    : body


-- | Generates a c2hs hook for the function.
--
mkFun :: CFun -> String
mkFun (CFun safe name prefix suffix params ret doc) =
  intercalate "\n"
    [ if null doc then "" else "-- | " <> doc
    , printf "{-# INLINEABLE %s #-}" name
    , printf "{# fun%s %s%s { %s } -> %s #}" safe' cName hName params' ret'
    ]
  where
    cName   = funMangler name prefix suffix
    hName   = if name == cName then "" else " as " <> name
    safe'   = if safe then "" else " unsafe"
    params' = intercalate ", " $ fmap (mkParamType . convType) params
    ret'    = mkRetType $ convType ret

mkDummyFun :: Double -> CFun -> String
mkDummyFun minv (CFun _ name _ _ params ret doc) =
  intercalate "\n"
    [ if null doc then "" else "-- | " <> doc
    , printf "%s :: %s -> IO %s" name params' ret'
    , printf "%s %s = cusolverError \"'%s' requires at least cuda-%3.1f\"" name ignore name minv
    ]
  where
    params' = intercalate " -> " $ map (hsType . convType) params
    ignore  = unwords $ replicate (length params) "_"
    ret'    = hsType (convType ret)
    hsType (HType _ s _) = s


data Safety
  = Safe
  | Unsafe
  deriving (Bounded, Enum, Eq, Ord, Read, Show)

-- | Represents a C type.
--
data Type
  = TVoid
  | THandle
  | TStatus
  | TPtr (Maybe AddrSpace) Type
  | TInt (Maybe Int)  -- ^ signed integer, with optional precision
  | THalf             -- ^ 16-bit floating-point type
  | TFloat            -- ^ 32-bit floating-point
  | TDouble           -- ^ 64-bit floating-point
  | TComplex Type
  | TChar
  | TEnum String
  | TPrim String String String
  | TDummy Int        -- ^ Used for extracting the bound variables
  deriving (Eq, Show)

data AddrSpace
  = Host | Device
  deriving (Eq, Show)

realTypes :: [Type]
realTypes = [ float, double ]

complexTypes :: [Type]
complexTypes = complex <$> realTypes

floatingTypes :: [Type]
floatingTypes = realTypes <> complexTypes

floatingTypesB :: [(Type, Type)]
floatingTypesB = do
  t <- floatingTypes
  return $ case t of
    TComplex t' -> (t', t)
    _           -> (t,  t)

floatingTypesE :: [(Type, Type)]
floatingTypesE = do
  t <- floatingTypes
  case t of
    TComplex t' -> [(t, t), (t, t')]
    _           -> [(t, t)]

-- | Represents a C function.
--
data Fun
  = Fun
    { fName     :: String
    , _fPrefix  :: String
    , _fSuffix  :: String
    , fTypes    :: [Type]
    , _fDoc     :: String
    }

-- | Construct a 'Fun'.
--
fun :: String -> [Type] -> Fun
fun name types = Fun name "" "" types ""

dn :: String -> [Type] -> Fun
dn name types = Fun name "Dn" "" types ""

sp :: String -> [Type] -> Fun
sp name types = Fun name "Sp" "" types ""

rf :: String -> [Type] -> Fun
rf name types = Fun name "Rf" "" types ""

-- | Represents a marshallable C type for c2hs.
--
data HType = HType
             String                     -- in marshaller
             String                     -- type
             String                     -- out marshaller
             deriving Show

mkParamType :: HType -> String
mkParamType (HType m s o) = m' <> s' <> o'
  where
    m' = if null m then "" else m <> " "
    o' = if null o then "" else " " <> o
    s' = "`" <> s <> "'"

mkRetType :: HType -> String
mkRetType (HType _ s m) =
  if null m then s' else s' <> " " <> m
  where s' = "`" <> s <> "'"

-- | Represents a C function hook for c2hs.
--
data CFun
  = CFun
    { _cfSafe   :: Bool
    , cfName    :: String
    , _cfPrefix :: String
    , _cfSuffix :: String
    , _cfParams :: [Type]
    , _cfRet    :: Type
    , _cfDoc    :: String
    }

-- | Construct a 'CFun'.
--
-- cFun :: String -> String -> [Type] -> Type -> CFun
-- cFun name suffix params ret = CFun True name suffix params ret ""

substitute :: String -> String -> String
substitute s y = case y of
  []     -> []
  x : xs ->
    let xs' = substitute s xs in
    case x of
      '?' -> s <> xs'
      _   -> x : xs'

typeAbbrev :: Type -> String
typeAbbrev t = case t of
  THalf            -> "h"
  TFloat           -> "s"
  TDouble          -> "d"
  TComplex TFloat  -> "c"
  TComplex TDouble -> "z"
  _                -> error ("no valid abbreviation for: " <> show t)

decorate :: [Type] -> String -> String
decorate [a]                = substitute $ typeAbbrev a
decorate [a, b] | a == b    = substitute $ typeAbbrev a
                | otherwise = substitute $ typeAbbrev a <> typeAbbrev b
decorate _                  = error "decorate: bad args"

-- NOTE: Here we assume that both the C and Haskell types have identical
-- representations; this isn't in the specs but in practice the Storable
-- instances are identical so it should work fine
--
convType :: Type -> HType
convType = \case
  TVoid             -> simple "()"
  TInt ms           -> simple (maybe "Int" (printf "Int%d") ms)
  TEnum t           -> enum t
  TChar             -> simple "Char"
  THalf             -> floating "Half"
  TFloat            -> floating "Float"
  TDouble           -> floating "Double"
  TComplex TFloat   -> fcomplex "(Complex Float)"
  TComplex TDouble  -> fcomplex "(Complex Double)"
  TPtr as t         -> pointer as
                     $ case convType t of
                         HType _ s _ -> case t of
                                          TPtr{} -> printf "(%s)" s
                                          _      -> s
  THandle           -> HType "useHandle" "Handle" ""
  TStatus           -> HType "" "()" "checkStatus*-"
  TPrim i b o       -> HType i b o
  t                 -> error $ "unmarshallable type: " <> show t
  where
    simple s    = HType "" s ""
    enum s      = HType "cFromEnum" s ""
    floating s  = HType ("C" <> s) s ""
    fcomplex s  = HType "withComplex*" s ""
    --
    pointer Nothing s       = HType "castPtr"  ("Ptr " <> s) ""
    pointer (Just Host) s   = HType "useHostP" ("HostPtr " <> s) ""
    pointer (Just Device) s = HType "useDevP"  ("DevicePtr " <> s) ""


-- shortcuts

ptr :: Type -> Type
ptr = TPtr Nothing

dptr :: Type -> Type
dptr = TPtr (Just Device)

hptr :: Type -> Type
hptr = TPtr (Just Host)

void :: Type
void = TVoid

int :: Type
int = TInt Nothing

int32 :: Type
int32 = TInt (Just 32)

int64 :: Type
int64 = TInt (Just 64)

half :: Type
half = THalf

char :: Type
char = TChar

float :: Type
float = TFloat

double :: Type
double = TDouble

complex :: Type -> Type
complex = TComplex

transpose :: Type
transpose = TEnum "Operation"

uplo :: Type
uplo = TEnum "Fill"

side :: Type
side = TEnum "Side"

eigmode :: Type
eigmode = TEnum "EigMode"

eigtype :: Type
eigtype = TEnum "EigType"

matdescr :: Type
matdescr = TPrim "useMatDescr" "MatrixDescriptor" ""

result :: Type -> Type
result (TInt ms) = TPrim "alloca-" (maybe "Int" (printf "Int%d") ms) "peekIntConv*"
result _         = error "unmarshallable output type"

funInsts :: Safety -> [FunGroup] -> [CFun]
funInsts safety funs = mangleFun safety <$> concatFunInstances funs


-- Function signatures
-- -------------------

-- | cuSolver function signatures. The initial context handle argument is added
-- implicitly.
--
-- Dense linear solver functions
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cuds-linearsolver-reference>
--
funs_denseLinear :: [FunGroup]
funs_denseLinear =
  [ gpA $ \ a   -> dn "?potrf_bufferSize" [ uplo, int, dptr a, int, result int ]
  , gpA $ \ a   -> dn "?potrf"            [ uplo, int, dptr a, int, dptr a, int, dptr int32 ]
  , gpA $ \ a   -> dn "?potrs"            [ uplo, int, int, dptr a, int, dptr a, int, dptr int32 ]
  , gpA $ \ a   -> dn "?getrf_bufferSize" [ int, int, dptr a, int, result int ]
  , gpA $ \ a   -> dn "?getrf"            [ int, int, dptr a, int, dptr a, dptr int32, dptr int32 ]
  , gpA $ \ a   -> dn "?getrs"            [ transpose, int, int, dptr a, int, dptr int32, dptr a, int, dptr int32 ]
  , gpA $ \ a   -> dn "?geqrf_bufferSize" [ int, int, dptr a, int, result int ]
  , gpA $ \ a   -> dn "?geqrf"            [ int, int, dptr a, int, dptr a, dptr a, int, dptr int32 ]
  , gpR $ \ a   -> dn "?ormqr"            [ side, transpose, int, int, int, dptr a, int, dptr a, dptr a, int, dptr a, int, dptr int32 ]
  , gpC $ \ a   -> dn "?unmqr"            [ side, transpose, int, int, int, dptr a, int, dptr a, dptr a, int, dptr a, int, dptr int32 ]
  , gpA $ \ a   -> dn "?sytrf_bufferSize" [ int, dptr a, int, result int ]
  , gpA $ \ a   -> dn "?sytrf"            [ uplo, int, dptr a, int, dptr int32, dptr a, int, dptr int32 ]
  ]

funs_denseLinear_cuda80 :: [FunGroup]
funs_denseLinear_cuda80 =
  [ gpR $ \ a   -> dn "?orgqr_bufferSize" [ int, int, int, dptr a, int, dptr a, result int ]
  , gpC $ \ a   -> dn "?ungqr_bufferSize" [ int, int, int, dptr a, int, dptr a, result int ]
  , gpR $ \ a   -> dn "?orgqr"            [ int, int, int, dptr a, int, dptr a, dptr a, int, dptr int32 ]
  , gpC $ \ a   -> dn "?ungqr"            [ int, int, int, dptr a, int, dptr a, dptr a, int, dptr int32 ]
  , gpR $ \ a   -> dn "?ormqr_bufferSize" [ side, transpose, int, int, int, dptr a, int, dptr a, dptr a, int, result int ]
  , gpC $ \ a   -> dn "?unmqr_bufferSize" [ side, transpose, int, int, int, dptr a, int, dptr a, dptr a, int, result int ]
  ]


-- | Dense eigenvalue solver functions
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cuds-eigensolver-reference>
--
funs_denseEigen :: [FunGroup]
funs_denseEigen =
  [ gpA $ \ _   -> dn "?gebrd_bufferSize" [ int, int, result int ]
  , gpA $ \ a   -> dn "?gebrd"            [ int, int, dptr a, int, dptr a, dptr a, dptr a, dptr a, dptr a, int, dptr int32 ]
  , gpA $ \ _   -> dn "?gesvd_bufferSize" [ int, int, result int ]
  , gpA $ \ a   -> dn "?gesvd"            [ char, char, int, int, dptr a, int, dptr a, dptr a, int, dptr a, int, dptr a, int, dptr a, dptr int32 ]
  ]

funs_denseEigen_cuda80 :: [FunGroup]
funs_denseEigen_cuda80 =
  [ gpR $ \ a   -> dn "?orgbr_bufferSize" [ side, int, int, int, dptr a, int, dptr a, result int ]
  , gpC $ \ a   -> dn "?ungbr_bufferSize" [ side, int, int, int, dptr a, int, dptr a, result int ]
  , gpR $ \ a   -> dn "?orgbr"            [ side, int, int, int, dptr a, int, dptr a, dptr a, int, dptr int32 ]
  , gpC $ \ a   -> dn "?ungbr"            [ side, int, int, int, dptr a, int, dptr a, dptr a, int, dptr int32 ]
  , gpR $ \ a   -> dn "?sytrd_bufferSize" [ uplo, int, dptr a, int, dptr a, dptr a, dptr a, result int ]
  , gpC $ \ a   -> dn "?hetrd_bufferSize" [ uplo, int, dptr a, int, dptr a, dptr a, dptr a, result int ]
  , gpR $ \ a   -> dn "?sytrd"            [ uplo, int, dptr a, int, dptr a, dptr a, dptr a, dptr a, int, dptr int32 ]
  , gpC $ \ a   -> dn "?hetrd"            [ uplo, int, dptr a, int, dptr a, dptr a, dptr a, dptr a, int, dptr int32 ]
  , gpR $ \ a   -> dn "?ormtr_bufferSize" [ side, uplo, transpose, int, int, dptr a, int, dptr a, dptr a, int, result int ]
  , gpC $ \ a   -> dn "?unmtr_bufferSize" [ side, uplo, transpose, int, int, dptr a, int, dptr a, dptr a, int, result int ]
  , gpR $ \ a   -> dn "?ormtr"            [ side, uplo, transpose, int, int, dptr a, int, dptr a, dptr a, int, dptr a, int, dptr int32 ]
  , gpC $ \ a   -> dn "?unmtr"            [ side, uplo, transpose, int, int, dptr a, int, dptr a, dptr a, int, dptr a, int, dptr int32 ]
  , gpR $ \ a   -> dn "?orgtr_bufferSize" [ uplo, int, dptr a, int, dptr a, result int ]
  , gpC $ \ a   -> dn "?ungtr_bufferSize" [ uplo, int, dptr a, int, dptr a, result int ]
  , gpR $ \ a   -> dn "?orgtr"            [ uplo, int, dptr a, int, dptr a, dptr a, int, dptr int32 ]
  , gpC $ \ a   -> dn "?ungtr"            [ uplo, int, dptr a, int, dptr a, dptr a, int, dptr int32 ]
  , gpR $ \ a   -> dn "?syevd_bufferSize" [ eigmode, uplo, int, dptr a, int, dptr a, result int ]
  , gpC $ \ a   -> dn "?heevd_bufferSize" [ eigmode, uplo, int, dptr a, int, dptr a, result int ]
  , gpR $ \ a   -> dn "?syevd"            [ eigmode, uplo, int, dptr a, int, dptr a, dptr a, int, dptr int32 ]
  , gpC $ \ a   -> dn "?heevd"            [ eigmode, uplo, int, dptr a, int, dptr a, dptr a, int, dptr int32 ]
  , gpR $ \ a   -> dn "?sygvd_bufferSize" [ eigtype, eigmode, uplo, int, dptr a, int, dptr a, int, dptr a, result int ]
  , gpC $ \ a   -> dn "?hegvd_bufferSize" [ eigtype, eigmode, uplo, int, dptr a, int, dptr a, int, dptr a, result int ]
  , gpR $ \ a   -> dn "?sygvd"            [ eigtype, eigmode, uplo, int, dptr a, int, dptr a, int, dptr a, dptr a, int, dptr int32 ]
  , gpC $ \ a   -> dn "?hegvd"            [ eigtype, eigmode, uplo, int, dptr a, int, dptr a, int, dptr a, dptr a, int, dptr int32 ]
  ]


-- Function groups
-- ---------------

data FunGroup
  = FunGroup
    { _gpName :: String
    , _gpType :: [Type]
    , gpInsts :: [FunInstance]
    }

gp :: Fun -> FunGroup
gp f = FunGroup (fName f) (fTypes f) [FunInstance [] f]

-- | Function group over @s d c z@.
gpA :: (Type -> Fun) -> FunGroup
gpA = makeFunGroup1 decorate floatingTypes

-- | Function group over @s d c z h@
gpH :: (Type -> Fun) -> FunGroup
gpH = makeFunGroup1 decorate (floatingTypes <> return half)

-- | Function group over @s d@.
gpR :: (Type -> Fun) -> FunGroup
gpR = makeFunGroup1 decorate realTypes

-- | Function group over @s d@ but relabel them as @c z@.
gpQ :: (Type -> Fun) -> FunGroup
gpQ = makeFunGroup1 (decorate . (complex <$>)) realTypes

-- | Function group over @c z@.
gpC :: (Type -> Fun) -> FunGroup
gpC = makeFunGroup1 decorate complexTypes

-- | Function group over @ss dd sc dz@.
gpB :: (Type -> Type -> Fun) -> FunGroup
gpB = makeFunGroup2 decorate floatingTypesB

-- | Function group over @ss dd cc zz cs zd@.
gpE :: (Type -> Type -> Fun) -> FunGroup
gpE = makeFunGroup2 decorate floatingTypesE

makeFunGroup1 :: ([Type] -> String -> String)
              -> [Type]
              -> (Type -> Fun)
              -> FunGroup
makeFunGroup1 d ts ff = makeFunGroup 1 d ts' ff'
  where ts'      = [ [a] | a <- ts ]
        ff' args = ff a   where [a]    = args

makeFunGroup2 :: ([Type] -> String -> String)
              -> [(Type, Type)]
              -> (Type -> Type -> Fun)
              -> FunGroup
makeFunGroup2 d ts ff = makeFunGroup 2 d ts' ff'
  where ts'      = [ [a, b] | (a, b) <- ts ]
        ff' args = ff a b where [a, b] = args

makeFunGroup :: Int
             -> ([Type] -> String -> String)
             -> [[Type]]
             -> ([Type] -> Fun)
             -> FunGroup
makeFunGroup n decorator ts ff =
  let f = ff (take n (TDummy <$> [0 ..])) in
  FunGroup (substitute "" $ fName f) (fTypes f) $ do
    t <- ts
    let f' = ff t
    return $ FunInstance t (f' { fName = decorator t $ fName f'})

data FunInstance
  = FunInstance
    { _fiArgs :: [Type]
    , fiFun   :: Fun
    }

concatFunInstances :: [FunGroup] -> [Fun]
concatFunInstances = (>>= (>>= return . fiFun) . gpInsts)

funMangler :: String -> String -> String -> String
funMangler []     _   _   = error "funMangler: empty input"
funMangler (x:xs) pre suf = printf "cusolver%s%c%s%s" pre (toUpper x) xs suf

mangleFun :: Safety -> Fun -> CFun
mangleFun safety (Fun name prefix suffix params doc) =
  CFun (safety==Safe) name prefix suffix (THandle : params) TStatus doc

