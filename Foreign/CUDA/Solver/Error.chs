{-# LANGUAGE CPP                      #-}
{-# LANGUAGE DeriveDataTypeable       #-}
{-# LANGUAGE ForeignFunctionInterface #-}
-- |
-- Module      : Foreign.CUDA.Solver.Error
-- Copyright   : [2017] Trevor L. McDonell
-- License     : BSD3
--
-- Maintainer  : Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--

module Foreign.CUDA.Solver.Error
  where

-- friends
import Foreign.CUDA.Solver.Internal.C2HS

-- system
import Control.Exception
import Data.Typeable
import Foreign.C.Types
import Language.Haskell.TH
import Text.Printf

#include "cbits/stubs.h"
{# context lib="cusolver" #}


-- | Error codes used by cuSolver library functions
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cuSolverSPstatus>
--
{# enum cusolverStatus_t as Status
  { underscoreToCase }
  with prefix="CUSOLVER_STATUS" deriving (Eq, Show) #}

-- Describe each error code
--
describe :: Status -> String
describe Success                = "success"
describe NotInitialized         = "library not initialised"
describe AllocFailed            = "resource allocation failed"
describe InvalidValue           = "unsupported value or parameter passed to a function"
describe ArchMismatch           = "unsupported on current architecture"
describe MappingError           = "access to GPU memory failed"
describe ExecutionFailed        = "execution failed"
describe InternalError          = "internal error"
describe MatrixTypeNotSupported = "matrix type not supported for this function"
describe NotSupported           = "operation not supported"
describe ZeroPivot              = "zero pivot"
describe InvalidLicense         = "invalid license"


-- Exceptions ------------------------------------------------------------------
--
data CUSolverException
  = ExitCode  Status
  | UserError String
  deriving Typeable

instance Exception CUSolverException

instance Show CUSolverException where
  showsPrec _ (ExitCode  s) = showString ("CUSolver Exception: " ++ describe s)
  showsPrec _ (UserError s) = showString ("CUSolver Exception: " ++ s)


-- | Raise a CUSolverException in the IO Monad
--
cusolverError :: String -> IO a
cusolverError s = throwIO (UserError s)

-- |
-- A specially formatted error message
--
requireSDK :: Name -> Double -> IO a
requireSDK n v = cusolverError $ printf "'%s' requires at least cuda-%3.1f\n" (show n) v


-- | Return the results of a function on successful execution, otherwise throw
-- an exception with an error string associated with the return code
--
{-# INLINE resultIfOk #-}
resultIfOk :: (Status, a) -> IO a
resultIfOk (status,result) =
    case status of
        Success -> return  result
        _       -> throwIO (ExitCode status)

-- | Throw an exception with an error string associated with an unsuccessful
-- return code, otherwise return unit.
--
{-# INLINE nothingIfOk #-}
nothingIfOk :: Status -> IO ()
nothingIfOk status =
    case status of
        Success -> return  ()
        _       -> throwIO (ExitCode status)

-- | Throw an error if given error code is not CUSPARSE_STATUS_SUCCESS
--
{-# INLINE checkStatus #-}
checkStatus :: CInt -> IO ()
checkStatus = nothingIfOk . cToEnum

