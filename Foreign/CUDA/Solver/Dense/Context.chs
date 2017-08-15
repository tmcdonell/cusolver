{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}
-- |
-- Module      : Foreign.CUDA.Solver.Dense.Context
-- Copyright   : [2017] Trevor L. McDonell
-- License     : BSD3
--
-- Maintainer  : Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--

module Foreign.CUDA.Solver.Dense.Context (

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


-- | An opaque handle to the cuSolverDN context, which is passed to all library
-- function calls.
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cuSolverDNhandle>
--
newtype Handle = Handle { useHandle :: {# type cusolverDnHandle_t #}}


-- | This function initializes the cuSolverDN library and creates a handle to
-- the cuSolverDN context. It must be called before any other cuSolverDN API
-- function is invoked. It allocates hardware resources necessary for accessing
-- the GPU.
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cuSolverDNcreate>
--
{-# INLINEABLE create #-}
create :: IO Handle
create = resultIfOk =<< cusolverDnCreate
  where
    {# fun unsafe cusolverDnCreate
      { alloca- `Handle' peekHdl* } -> `Status' cToEnum #}
      where
        peekHdl = liftM Handle . peek

-- | This function releases resources used by the cuSolverDN library.
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cuSolverDNdestroy>
--
{-# INLINEABLE destroy #-}
{# fun unsafe cusolverDnDestroy as destroy
  { useHandle `Handle' } -> `()' checkStatus* #}

