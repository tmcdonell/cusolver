{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}
-- |
-- Module      : Foreign.CUDA.Solver.Sparse.Context
-- Copyright   : [2017] Trevor L. McDonell
-- License     : BSD3
--
-- Maintainer  : Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--

module Foreign.CUDA.Solver.Sparse.Context (

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


-- | An opaque handle to the cuSolverSP context, which is passed to all library
-- function calls.
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cuSolverSPhandle>
--
newtype Handle = Handle { useHandle :: {# type cusolverSpHandle_t #}}


-- | This function initializes the cuSolverSP library and creates a handle to
-- the cuSolverSP context. It must be called before any other cuSolverSP API
-- function is invoked. It allocates hardware resources necessary for accessing
-- the GPU.
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cusolverecreate>
--
{-# INLINEABLE create #-}
create :: IO Handle
create = resultIfOk =<< cusolverSpCreate
  where
    {# fun unsafe cusolverSpCreate
      { alloca- `Handle' peekHdl* } -> `Status' cToEnum #}
      where
        peekHdl = liftM Handle . peek

-- | This function releases resources used by the cuSolverSP library.
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cusparsedestroy>
--
{-# INLINEABLE destroy #-}
{# fun unsafe cusolverSpDestroy as destroy
  { useHandle `Handle' } -> `()' checkStatus* #}

