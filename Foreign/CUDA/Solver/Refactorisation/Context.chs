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

  -- * Analysis
  setup,
  analyse,

) where

-- friends
import Foreign.CUDA.Ptr
import Foreign.CUDA.Solver.Error
import Foreign.CUDA.Solver.Internal.C2HS

-- system
import Data.Int
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
{# fun unsafe cusolverRfCreate as create
  { alloca- `Handle' peekHdl* } -> `()' checkStatus*- #}
  where
    peekHdl = liftM Handle . peek

-- | This function releases resources used by the cuSolverRF library.
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#glu-lt-t-gt-destroy>
--
{-# INLINEABLE destroy #-}
{# fun unsafe cusolverRfDestroy as destroy
  { useHandle `Handle' } -> `()' checkStatus* #}


-- | Assembles internal data structures required by the cuSolverRF library.
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#glu-lt-t-gt-assemble-device>
--
{-# INLINEABLE setup #-}
{# fun unsafe cusolverRfSetupDevice as setup
  { `Int'
  , `Int'
  , useDevP `DevicePtr Int32'
  , useDevP `DevicePtr Int32'
  , useDevP `DevicePtr Double'
  , `Int'
  , useDevP `DevicePtr Int32'
  , useDevP `DevicePtr Int32'
  , useDevP `DevicePtr Double'
  , `Int'
  , useDevP `DevicePtr Int32'
  , useDevP `DevicePtr Int32'
  , useDevP `DevicePtr Double'
  , useDevP `DevicePtr Int32'
  , useDevP `DevicePtr Int32'
  , useHandle `Handle'
  }
  -> `()' checkStatus*- #}
  where
    useDevP = useDevicePtr . castDevPtr


-- | Perform the appropriate analysis of parallelism available in the LU
-- refactorisation depending upon the algorithm chosen by the user. Assumes
-- a prior call to 'setup' (or 'setupHost') to create internal data structures.
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#glu-lt-t-gt-analyze>
--
{-# INLINEABLE analyse #-}
{# fun unsafe cusolverRfAnalyze as analyse
  { useHandle `Handle' } -> `()' checkStatus* #}


