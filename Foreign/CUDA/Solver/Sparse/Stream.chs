{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}
-- |
-- Module      : Foreign.CUDA.Solver.Sparse.Stream
-- Copyright   : [2017] Trevor L. McDonell
-- License     : BSD3
--
-- Maintainer  : Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--

module Foreign.CUDA.Solver.Sparse.Stream (

  setStream,

) where

import Foreign.CUDA.Driver.Stream
import Foreign.CUDA.Solver.Sparse.Context
import Foreign.CUDA.Solver.Internal.C2HS

import Foreign.C
import Foreign.Ptr

#include "cbits/stubs.h"
{# context lib="cusparse" #}


-- | Sets the execution stream which all subsequent cuSolverSp library functions
-- will execute with. If not set, functions execute in the default stream (which
-- never overlaps any other operations).
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cusparsesetstream>
--
{-# INLINEABLE setStream #-}
{# fun unsafe cusolverSpSetStream as setStream
  { useHandle `Handle'
  , useStream `Stream'
  }
  -> `()' checkStatus* #}

