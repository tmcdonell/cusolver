{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}
-- |
-- Module      : Foreign.CUDA.Solver.Refactorisation.Context
-- Copyright   : [2017] Trevor L. McDonell
-- License     : BSD3
--
-- Maintainer  : Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--

module Foreign.CUDA.Solver.Refactorisation.Context (

  -- * Context management
  Handle(..),
  create,
  destroy,

) where

-- Friends
import Foreign.CUDA.Solver.Error
import Foreign.CUDA.Solver.Internal.C2HS

-- System
import Foreign
import Foreign.C
import Control.Monad                                      ( liftM )

#include "cbits/stubs.h"
{# context lib="cusolver" #}


-- | An opaque handle to the cuSolverRF context, which is passed to all library
-- function calls.
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cusolverRfHandle>
--
newtype Handle = Handle { useHandle :: {# type cusolverRfHandle_t #}}


-- | This function initializes the cuSolverRF library and creates a handle to
-- the cuSolverRF context. It must be called before any other cuSolverRF API
-- function is invoked. It allocates hardware resources necessary for accessing
-- the GPU.
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#glu-lt-t-gt-create>
--
{-# INLINEABLE create #-}
create :: IO Handle
create = resultIfOk =<< cusolverRfCreate
  where
    {# fun unsafe cusolverRfCreate
      { alloca- `Handle' peekHdl* } -> `Status' cToEnum #}
      where
        peekHdl = liftM Handle . peek

-- | This function releases resources used by the cuSolverRF library.
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#glu-lt-t-gt-destroy>
--
{-# INLINEABLE destroy #-}
{# fun unsafe cusolverRfDestroy as destroy
  { useHandle `Handle' } -> `()' checkStatus* #}

