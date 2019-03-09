{-# LANGUAGE CPP                      #-}
{-# LANGUAGE EmptyDataDecls           #-}
{-# LANGUAGE ForeignFunctionInterface #-}
-- |
-- Module      : Foreign.CUDA.Solver.Internal.Types
-- Copyright   : [2017] Trevor L. McDonell
-- License     : BSD3
--
-- Maintainer  : Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--

module Foreign.CUDA.Solver.Internal.Types (

  -- Dense
  BLAS.Fill(..),
  BLAS.Operation(..),
  BLAS.Side(..),
  EigType(..),
  EigMode(..),
  EigRange(..),

  -- Sparse
  Sparse.MatrixDescriptor(..),

  -- Refactorisation
  MatrixFormat(..),
  NumericBoost(..),
  ResetFastMode(..),
  FactorizationAlgorithm(..),
  TriangularSolveAlgorithm(..),
  UnitDiagonal(..),

) where

-- friends
import Foreign.CUDA.BLAS                                  as BLAS
import Foreign.CUDA.BLAS.Sparse.Matrix.Descriptor         as Sparse

-- other
import Prelude
import Foreign.Ptr

#include "cbits/stubs.h"
{# context lib="cusolver" #}


-- | This type indicates which type of eigenvalue solver is used. It corresponds
-- to the parameters used by legacy LAPACK implementations:
--
--    * @EigType1@: \( A*x = lambda*B*x \)
--    * @EigType2@: \( A*B*x = lambda*x \)
--    * @EigType3@: \( B*A*x = lambda*x \)
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cusolverEigType>
--
#if CUDA_VERSION >= 8000
{# enum cusolverEigType_t as EigType
  { underscoreToCase }
  with prefix="CUSOLVER" deriving (Eq, Show) #}
#else
data EigType
#endif


-- | This type indicates whether eigenvectors are computed.
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cusolverEigMode>
--
#if CUDA_VERSION >= 8000
{# enum cusolverEigMode_t as EigMode
  { underscoreToCase
  , CUSOLVER_EIG_MODE_NOVECTOR as NoVector
  }
  with prefix="CUSOLVER_EIG_MODE" deriving (Eq, Show) #}
#else
data EigMode
#endif

-- | This type indicates which selection of eigenvalues and optionally
-- eigenvectors need to be computed
--
#if CUDA_VERSION >= 10010
{# enum cusolverEigRange_t as EigRange
  { underscoreToCase }
  with prefix="CUSOLVER_EIG_RANGE" deriving (Eq, Show) #}
#else
data EigRange
#endif


-- | Indicates the input/output matrix format
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cusolverRfMatrixFormat>
--
{# enum cusolverRfMatrixFormat_t as MatrixFormat
  { }
  with prefix="CUSOLVERRF_MATRIX_FORMAT" deriving (Eq, Show) #}

-- | Indicates whether numeric boosting of the pivot was used during
-- refactorisation.
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cusolverRfNumericBoostReport>
--
{# enum cusolverRfNumericBoostReport_t as NumericBoost
  { underscoreToCase }
  with prefix="CUSOLVERRF_NUMERIC" deriving (Eq, Show) #}

-- | Indicates whether fast mode should be used in
-- 'Foreign.CUDA.Solver.Refactorisation.resetValues'. Fast mode requires extra
-- memory.
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cusolverRfResetValuesFastMode>
--
{# enum cusolverRfResetValuesFastMode_t as ResetFastMode
  { underscoreToCase }
  with prefix="CUSOLVERRF_RESET_VALUES" deriving (Eq, Show) #}

-- | Indicates which (internal) algorithm is used for refactorisation in the
-- 'Foreign.CUDA.Solver.Refactorisation.refactor' routine.
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cusolverRfFactorization>
--
{# enum cusolverRfFactorization_t as FactorizationAlgorithm
  { underscoreToCase }
  with prefix="CUSOLVERRF" deriving (Eq, Show) #}

-- | Indicates which (internal) algorithm is used for the triangular solve
-- routine 'Foreign.CUDA.Solver.Refactorisation.triangularSolve'.
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cusolverRfTriangularSolve>
--
{# enum cusolverRfTriangularSolve_t as TriangularSolveAlgorithm
  { underscoreToCase }
  with prefix="CUSOLVERRF" deriving (Eq, Show) #}

-- | Indicates whether and where the unit diagonal is stored in the input/output
-- triangular factors.
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cusolverRfUnitDiagonal>
--
{# enum cusolverRfUnitDiagonal_t as UnitDiagonal
  { underscoreToCase }
  with prefix="CUSOLVERRF_UNIT_DIAGONAL" deriving (Eq, Show) #}

