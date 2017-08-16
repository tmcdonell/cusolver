-- |
-- Module      : Foreign.CUDA.Solver.Dense
-- Copyright   : [2017] Trevor L. McDonell
-- License     : BSD3
--
-- Maintainer  : Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- The cuSolver library provides useful LAPACK-like features implemented on
-- NVIDIA GPUs. This module implements a subset of LAPACK functions on dense
-- matrices.
--
-- To use operations from the cuSolver library, the user must allocate the
-- required vectors and matrices in the GPU memory space, fill them with data,
-- call the desired sequence of cuSolver functions, then copy the results from
-- the GPU memory space back to the host.
--
-- The <http://hackage.haskell.org/package/cuda cuda> package can be used for
-- writing to and retrieving data from the GPU.
--
-- [/Example/]
--
-- /TODO/
--
-- [/Additional information/]
--
-- For more information, see the NVIDIA cuSolver documentation:
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html>
--

module Foreign.CUDA.Solver.Dense (

  -- * Control
  module Foreign.CUDA.Solver.Dense.Context,
  module Foreign.CUDA.Solver.Dense.Stream,
  module Foreign.CUDA.Solver.Error,

  -- * Operations
  module Foreign.CUDA.Solver.Dense.Linear,
  module Foreign.CUDA.Solver.Dense.Eigenvalue,

) where

import Foreign.CUDA.Solver.Dense.Context                  hiding ( useHandle )
import Foreign.CUDA.Solver.Dense.Stream
import Foreign.CUDA.Solver.Error

import Foreign.CUDA.Solver.Dense.Linear
import Foreign.CUDA.Solver.Dense.Eigenvalue

