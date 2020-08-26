--
-- This module is auto-generated. Do not edit directly.
--

{-# LANGUAGE CPP #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
-- |
-- Module      : Foreign.CUDA.Solver.Sparse.Low
-- Copyright   : [2017..2020] Trevor L. McDonell
-- License     : BSD3
--
-- Maintainer  : Trevor L. McDonell <trevor.mcdonell@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- For more information see the cuSolver function reference:
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cusolver-low-level-function-reference>
--

module Foreign.CUDA.Solver.Sparse.Low (

  Handle,
  MatrixDescriptor,
  Info_csrqr,
  Info_csrchol,
  xcsrqrAnalysisBatched,
  scsrqrBufferInfoBatched,
  dcsrqrBufferInfoBatched,
  ccsrqrBufferInfoBatched,
  zcsrqrBufferInfoBatched,
  scsrqrsvBatched,
  dcsrqrsvBatched,
  ccsrqrsvBatched,
  zcsrqrsvBatched,
  xcsrqrAnalysis,
  scsrqrBufferInfo,
  dcsrqrBufferInfo,
  ccsrqrBufferInfo,
  zcsrqrBufferInfo,
  scsrqrSetup,
  dcsrqrSetup,
  ccsrqrSetup,
  zcsrqrSetup,
  scsrqrFactor,
  dcsrqrFactor,
  ccsrqrFactor,
  zcsrqrFactor,
  scsrqrZeroPivot,
  dcsrqrZeroPivot,
  ccsrqrZeroPivot,
  zcsrqrZeroPivot,
  scsrqrSolve,
  dcsrqrSolve,
  ccsrqrSolve,
  zcsrqrSolve,
  xcsrcholAnalysis,
  scsrcholBufferInfo,
  dcsrcholBufferInfo,
  ccsrcholBufferInfo,
  zcsrcholBufferInfo,
  scsrcholFactor,
  dcsrcholFactor,
  ccsrcholFactor,
  zcsrcholFactor,
  scsrcholZeroPivot,
  dcsrcholZeroPivot,
  ccsrcholZeroPivot,
  zcsrcholZeroPivot,
  scsrcholSolve,
  dcsrcholSolve,
  ccsrcholSolve,
  zcsrcholSolve,

) where

import Data.Complex
import Foreign
import Foreign.C
import Foreign.Storable.Complex ()
import Foreign.CUDA.Ptr
import Foreign.CUDA.Solver.Sparse.Context
import Foreign.CUDA.Solver.Sparse.Analysis
import Foreign.CUDA.Solver.Error
import Foreign.CUDA.Solver.Internal.C2HS
import Foreign.CUDA.Solver.Internal.Types

#include "cbits/stubs.h"
{# context lib="cusolver" #}

{-# INLINE useDevP #-}
useDevP :: DevicePtr a -> Ptr b
useDevP = useDevicePtr . castDevPtr

{-# INLINE useHostP #-}
useHostP :: HostPtr a -> Ptr b
useHostP = useHostPtr . castHostPtr


{-# INLINEABLE xcsrqrAnalysisBatched #-}
{# fun unsafe cusolverSpXcsrqrAnalysisBatched as xcsrqrAnalysisBatched { useHandle `Handle', `Int', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useInfo_csrqr `Info_csrqr' } -> `()' checkStatus*- #}

{-# INLINEABLE scsrqrBufferInfoBatched #-}
{# fun unsafe cusolverSpScsrqrBufferInfoBatched as scsrqrBufferInfoBatched { useHandle `Handle', `Int', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Float', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', `Int', useInfo_csrqr `Info_csrqr', alloca- `Int' peekIntConv*, alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dcsrqrBufferInfoBatched #-}
{# fun unsafe cusolverSpDcsrqrBufferInfoBatched as dcsrqrBufferInfoBatched { useHandle `Handle', `Int', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Double', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', `Int', useInfo_csrqr `Info_csrqr', alloca- `Int' peekIntConv*, alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE ccsrqrBufferInfoBatched #-}
{# fun unsafe cusolverSpCcsrqrBufferInfoBatched as ccsrqrBufferInfoBatched { useHandle `Handle', `Int', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', `Int', useInfo_csrqr `Info_csrqr', alloca- `Int' peekIntConv*, alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zcsrqrBufferInfoBatched #-}
{# fun unsafe cusolverSpZcsrqrBufferInfoBatched as zcsrqrBufferInfoBatched { useHandle `Handle', `Int', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', `Int', useInfo_csrqr `Info_csrqr', alloca- `Int' peekIntConv*, alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE scsrqrsvBatched #-}
{# fun unsafe cusolverSpScsrqrsvBatched as scsrqrsvBatched { useHandle `Handle', `Int', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Float', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useInfo_csrqr `Info_csrqr', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}

{-# INLINEABLE dcsrqrsvBatched #-}
{# fun unsafe cusolverSpDcsrqrsvBatched as dcsrqrsvBatched { useHandle `Handle', `Int', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Double', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useInfo_csrqr `Info_csrqr', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}

{-# INLINEABLE ccsrqrsvBatched #-}
{# fun unsafe cusolverSpCcsrqrsvBatched as ccsrqrsvBatched { useHandle `Handle', `Int', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useInfo_csrqr `Info_csrqr', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}

{-# INLINEABLE zcsrqrsvBatched #-}
{# fun unsafe cusolverSpZcsrqrsvBatched as zcsrqrsvBatched { useHandle `Handle', `Int', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useInfo_csrqr `Info_csrqr', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}
#if CUDA_VERSION >= 7500

{-# INLINEABLE xcsrqrAnalysis #-}
{# fun unsafe cusolverSpXcsrqrAnalysis as xcsrqrAnalysis { useHandle `Handle', `Int', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useInfo_csrqr `Info_csrqr' } -> `()' checkStatus*- #}

{-# INLINEABLE scsrqrBufferInfo #-}
{# fun unsafe cusolverSpScsrqrBufferInfo as scsrqrBufferInfo { useHandle `Handle', `Int', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Float', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useInfo_csrqr `Info_csrqr', alloca- `Int' peekIntConv*, alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dcsrqrBufferInfo #-}
{# fun unsafe cusolverSpDcsrqrBufferInfo as dcsrqrBufferInfo { useHandle `Handle', `Int', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Double', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useInfo_csrqr `Info_csrqr', alloca- `Int' peekIntConv*, alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE ccsrqrBufferInfo #-}
{# fun unsafe cusolverSpCcsrqrBufferInfo as ccsrqrBufferInfo { useHandle `Handle', `Int', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useInfo_csrqr `Info_csrqr', alloca- `Int' peekIntConv*, alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zcsrqrBufferInfo #-}
{# fun unsafe cusolverSpZcsrqrBufferInfo as zcsrqrBufferInfo { useHandle `Handle', `Int', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useInfo_csrqr `Info_csrqr', alloca- `Int' peekIntConv*, alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE scsrqrSetup #-}
{# fun unsafe cusolverSpScsrqrSetup as scsrqrSetup { useHandle `Handle', `Int', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Float', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', CFloat `Float', useInfo_csrqr `Info_csrqr' } -> `()' checkStatus*- #}

{-# INLINEABLE dcsrqrSetup #-}
{# fun unsafe cusolverSpDcsrqrSetup as dcsrqrSetup { useHandle `Handle', `Int', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Double', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', CDouble `Double', useInfo_csrqr `Info_csrqr' } -> `()' checkStatus*- #}

{-# INLINEABLE ccsrqrSetup #-}
{# fun unsafe cusolverSpCcsrqrSetup as ccsrqrSetup { useHandle `Handle', `Int', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', withComplex* `(Complex Float)', useInfo_csrqr `Info_csrqr' } -> `()' checkStatus*- #}

{-# INLINEABLE zcsrqrSetup #-}
{# fun unsafe cusolverSpZcsrqrSetup as zcsrqrSetup { useHandle `Handle', `Int', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', withComplex* `(Complex Double)', useInfo_csrqr `Info_csrqr' } -> `()' checkStatus*- #}

{-# INLINEABLE scsrqrFactor #-}
{# fun unsafe cusolverSpScsrqrFactor as scsrqrFactor { useHandle `Handle', `Int', `Int', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', useInfo_csrqr `Info_csrqr', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}

{-# INLINEABLE dcsrqrFactor #-}
{# fun unsafe cusolverSpDcsrqrFactor as dcsrqrFactor { useHandle `Handle', `Int', `Int', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', useInfo_csrqr `Info_csrqr', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}

{-# INLINEABLE ccsrqrFactor #-}
{# fun unsafe cusolverSpCcsrqrFactor as ccsrqrFactor { useHandle `Handle', `Int', `Int', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', useInfo_csrqr `Info_csrqr', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}

{-# INLINEABLE zcsrqrFactor #-}
{# fun unsafe cusolverSpZcsrqrFactor as zcsrqrFactor { useHandle `Handle', `Int', `Int', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', useInfo_csrqr `Info_csrqr', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}

{-# INLINEABLE scsrqrZeroPivot #-}
{# fun unsafe cusolverSpScsrqrZeroPivot as scsrqrZeroPivot { useHandle `Handle', useInfo_csrqr `Info_csrqr', CFloat `Float', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dcsrqrZeroPivot #-}
{# fun unsafe cusolverSpDcsrqrZeroPivot as dcsrqrZeroPivot { useHandle `Handle', useInfo_csrqr `Info_csrqr', CDouble `Double', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE ccsrqrZeroPivot #-}
{# fun unsafe cusolverSpCcsrqrZeroPivot as ccsrqrZeroPivot { useHandle `Handle', useInfo_csrqr `Info_csrqr', CFloat `Float', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zcsrqrZeroPivot #-}
{# fun unsafe cusolverSpZcsrqrZeroPivot as zcsrqrZeroPivot { useHandle `Handle', useInfo_csrqr `Info_csrqr', CDouble `Double', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE scsrqrSolve #-}
{# fun unsafe cusolverSpScsrqrSolve as scsrqrSolve { useHandle `Handle', `Int', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', useInfo_csrqr `Info_csrqr', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}

{-# INLINEABLE dcsrqrSolve #-}
{# fun unsafe cusolverSpDcsrqrSolve as dcsrqrSolve { useHandle `Handle', `Int', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', useInfo_csrqr `Info_csrqr', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}

{-# INLINEABLE ccsrqrSolve #-}
{# fun unsafe cusolverSpCcsrqrSolve as ccsrqrSolve { useHandle `Handle', `Int', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', useInfo_csrqr `Info_csrqr', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}

{-# INLINEABLE zcsrqrSolve #-}
{# fun unsafe cusolverSpZcsrqrSolve as zcsrqrSolve { useHandle `Handle', `Int', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', useInfo_csrqr `Info_csrqr', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}

{-# INLINEABLE xcsrcholAnalysis #-}
{# fun unsafe cusolverSpXcsrcholAnalysis as xcsrcholAnalysis { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useInfo_csrchol `Info_csrchol' } -> `()' checkStatus*- #}

{-# INLINEABLE scsrcholBufferInfo #-}
{# fun unsafe cusolverSpScsrcholBufferInfo as scsrcholBufferInfo { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Float', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useInfo_csrchol `Info_csrchol', alloca- `Int' peekIntConv*, alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dcsrcholBufferInfo #-}
{# fun unsafe cusolverSpDcsrcholBufferInfo as dcsrcholBufferInfo { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Double', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useInfo_csrchol `Info_csrchol', alloca- `Int' peekIntConv*, alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE ccsrcholBufferInfo #-}
{# fun unsafe cusolverSpCcsrcholBufferInfo as ccsrcholBufferInfo { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useInfo_csrchol `Info_csrchol', alloca- `Int' peekIntConv*, alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zcsrcholBufferInfo #-}
{# fun unsafe cusolverSpZcsrcholBufferInfo as zcsrcholBufferInfo { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useInfo_csrchol `Info_csrchol', alloca- `Int' peekIntConv*, alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE scsrcholFactor #-}
{# fun unsafe cusolverSpScsrcholFactor as scsrcholFactor { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Float', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useInfo_csrchol `Info_csrchol', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}

{-# INLINEABLE dcsrcholFactor #-}
{# fun unsafe cusolverSpDcsrcholFactor as dcsrcholFactor { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Double', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useInfo_csrchol `Info_csrchol', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}

{-# INLINEABLE ccsrcholFactor #-}
{# fun unsafe cusolverSpCcsrcholFactor as ccsrcholFactor { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useInfo_csrchol `Info_csrchol', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}

{-# INLINEABLE zcsrcholFactor #-}
{# fun unsafe cusolverSpZcsrcholFactor as zcsrcholFactor { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useInfo_csrchol `Info_csrchol', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}

{-# INLINEABLE scsrcholZeroPivot #-}
{# fun unsafe cusolverSpScsrcholZeroPivot as scsrcholZeroPivot { useHandle `Handle', useInfo_csrchol `Info_csrchol', CFloat `Float', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dcsrcholZeroPivot #-}
{# fun unsafe cusolverSpDcsrcholZeroPivot as dcsrcholZeroPivot { useHandle `Handle', useInfo_csrchol `Info_csrchol', CDouble `Double', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE ccsrcholZeroPivot #-}
{# fun unsafe cusolverSpCcsrcholZeroPivot as ccsrcholZeroPivot { useHandle `Handle', useInfo_csrchol `Info_csrchol', CFloat `Float', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zcsrcholZeroPivot #-}
{# fun unsafe cusolverSpZcsrcholZeroPivot as zcsrcholZeroPivot { useHandle `Handle', useInfo_csrchol `Info_csrchol', CDouble `Double', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE scsrcholSolve #-}
{# fun unsafe cusolverSpScsrcholSolve as scsrcholSolve { useHandle `Handle', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', useInfo_csrchol `Info_csrchol', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}

{-# INLINEABLE dcsrcholSolve #-}
{# fun unsafe cusolverSpDcsrcholSolve as dcsrcholSolve { useHandle `Handle', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', useInfo_csrchol `Info_csrchol', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}

{-# INLINEABLE ccsrcholSolve #-}
{# fun unsafe cusolverSpCcsrcholSolve as ccsrcholSolve { useHandle `Handle', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', useInfo_csrchol `Info_csrchol', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}

{-# INLINEABLE zcsrcholSolve #-}
{# fun unsafe cusolverSpZcsrcholSolve as zcsrcholSolve { useHandle `Handle', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', useInfo_csrchol `Info_csrchol', useDevP `DevicePtr ()' } -> `()' checkStatus*- #}
#else

xcsrqrAnalysis :: Handle -> Int -> Int -> Int -> MatrixDescriptor -> DevicePtr Int32 -> DevicePtr Int32 -> Info_csrqr -> IO ()
xcsrqrAnalysis _ _ _ _ _ _ _ _ = cusolverError "'xcsrqrAnalysis' requires at least cuda-7.5"

scsrqrBufferInfo :: Handle -> Int -> Int -> Int -> MatrixDescriptor -> DevicePtr Float -> DevicePtr Int32 -> DevicePtr Int32 -> Info_csrqr -> Int -> Int -> IO ()
scsrqrBufferInfo _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'scsrqrBufferInfo' requires at least cuda-7.5"

dcsrqrBufferInfo :: Handle -> Int -> Int -> Int -> MatrixDescriptor -> DevicePtr Double -> DevicePtr Int32 -> DevicePtr Int32 -> Info_csrqr -> Int -> Int -> IO ()
dcsrqrBufferInfo _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dcsrqrBufferInfo' requires at least cuda-7.5"

ccsrqrBufferInfo :: Handle -> Int -> Int -> Int -> MatrixDescriptor -> DevicePtr (Complex Float) -> DevicePtr Int32 -> DevicePtr Int32 -> Info_csrqr -> Int -> Int -> IO ()
ccsrqrBufferInfo _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'ccsrqrBufferInfo' requires at least cuda-7.5"

zcsrqrBufferInfo :: Handle -> Int -> Int -> Int -> MatrixDescriptor -> DevicePtr (Complex Double) -> DevicePtr Int32 -> DevicePtr Int32 -> Info_csrqr -> Int -> Int -> IO ()
zcsrqrBufferInfo _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zcsrqrBufferInfo' requires at least cuda-7.5"

scsrqrSetup :: Handle -> Int -> Int -> Int -> MatrixDescriptor -> DevicePtr Float -> DevicePtr Int32 -> DevicePtr Int32 -> Float -> Info_csrqr -> IO ()
scsrqrSetup _ _ _ _ _ _ _ _ _ _ = cusolverError "'scsrqrSetup' requires at least cuda-7.5"

dcsrqrSetup :: Handle -> Int -> Int -> Int -> MatrixDescriptor -> DevicePtr Double -> DevicePtr Int32 -> DevicePtr Int32 -> Double -> Info_csrqr -> IO ()
dcsrqrSetup _ _ _ _ _ _ _ _ _ _ = cusolverError "'dcsrqrSetup' requires at least cuda-7.5"

ccsrqrSetup :: Handle -> Int -> Int -> Int -> MatrixDescriptor -> DevicePtr (Complex Float) -> DevicePtr Int32 -> DevicePtr Int32 -> (Complex Float) -> Info_csrqr -> IO ()
ccsrqrSetup _ _ _ _ _ _ _ _ _ _ = cusolverError "'ccsrqrSetup' requires at least cuda-7.5"

zcsrqrSetup :: Handle -> Int -> Int -> Int -> MatrixDescriptor -> DevicePtr (Complex Double) -> DevicePtr Int32 -> DevicePtr Int32 -> (Complex Double) -> Info_csrqr -> IO ()
zcsrqrSetup _ _ _ _ _ _ _ _ _ _ = cusolverError "'zcsrqrSetup' requires at least cuda-7.5"

scsrqrFactor :: Handle -> Int -> Int -> Int -> DevicePtr Float -> DevicePtr Float -> Info_csrqr -> DevicePtr () -> IO ()
scsrqrFactor _ _ _ _ _ _ _ _ = cusolverError "'scsrqrFactor' requires at least cuda-7.5"

dcsrqrFactor :: Handle -> Int -> Int -> Int -> DevicePtr Double -> DevicePtr Double -> Info_csrqr -> DevicePtr () -> IO ()
dcsrqrFactor _ _ _ _ _ _ _ _ = cusolverError "'dcsrqrFactor' requires at least cuda-7.5"

ccsrqrFactor :: Handle -> Int -> Int -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Info_csrqr -> DevicePtr () -> IO ()
ccsrqrFactor _ _ _ _ _ _ _ _ = cusolverError "'ccsrqrFactor' requires at least cuda-7.5"

zcsrqrFactor :: Handle -> Int -> Int -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Info_csrqr -> DevicePtr () -> IO ()
zcsrqrFactor _ _ _ _ _ _ _ _ = cusolverError "'zcsrqrFactor' requires at least cuda-7.5"

scsrqrZeroPivot :: Handle -> Info_csrqr -> Float -> Int -> IO ()
scsrqrZeroPivot _ _ _ _ = cusolverError "'scsrqrZeroPivot' requires at least cuda-7.5"

dcsrqrZeroPivot :: Handle -> Info_csrqr -> Double -> Int -> IO ()
dcsrqrZeroPivot _ _ _ _ = cusolverError "'dcsrqrZeroPivot' requires at least cuda-7.5"

ccsrqrZeroPivot :: Handle -> Info_csrqr -> Float -> Int -> IO ()
ccsrqrZeroPivot _ _ _ _ = cusolverError "'ccsrqrZeroPivot' requires at least cuda-7.5"

zcsrqrZeroPivot :: Handle -> Info_csrqr -> Double -> Int -> IO ()
zcsrqrZeroPivot _ _ _ _ = cusolverError "'zcsrqrZeroPivot' requires at least cuda-7.5"

scsrqrSolve :: Handle -> Int -> Int -> DevicePtr Float -> DevicePtr Float -> Info_csrqr -> DevicePtr () -> IO ()
scsrqrSolve _ _ _ _ _ _ _ = cusolverError "'scsrqrSolve' requires at least cuda-7.5"

dcsrqrSolve :: Handle -> Int -> Int -> DevicePtr Double -> DevicePtr Double -> Info_csrqr -> DevicePtr () -> IO ()
dcsrqrSolve _ _ _ _ _ _ _ = cusolverError "'dcsrqrSolve' requires at least cuda-7.5"

ccsrqrSolve :: Handle -> Int -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Info_csrqr -> DevicePtr () -> IO ()
ccsrqrSolve _ _ _ _ _ _ _ = cusolverError "'ccsrqrSolve' requires at least cuda-7.5"

zcsrqrSolve :: Handle -> Int -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Info_csrqr -> DevicePtr () -> IO ()
zcsrqrSolve _ _ _ _ _ _ _ = cusolverError "'zcsrqrSolve' requires at least cuda-7.5"

xcsrcholAnalysis :: Handle -> Int -> Int -> MatrixDescriptor -> DevicePtr Int32 -> DevicePtr Int32 -> Info_csrchol -> IO ()
xcsrcholAnalysis _ _ _ _ _ _ _ = cusolverError "'xcsrcholAnalysis' requires at least cuda-7.5"

scsrcholBufferInfo :: Handle -> Int -> Int -> MatrixDescriptor -> DevicePtr Float -> DevicePtr Int32 -> DevicePtr Int32 -> Info_csrchol -> Int -> Int -> IO ()
scsrcholBufferInfo _ _ _ _ _ _ _ _ _ _ = cusolverError "'scsrcholBufferInfo' requires at least cuda-7.5"

dcsrcholBufferInfo :: Handle -> Int -> Int -> MatrixDescriptor -> DevicePtr Double -> DevicePtr Int32 -> DevicePtr Int32 -> Info_csrchol -> Int -> Int -> IO ()
dcsrcholBufferInfo _ _ _ _ _ _ _ _ _ _ = cusolverError "'dcsrcholBufferInfo' requires at least cuda-7.5"

ccsrcholBufferInfo :: Handle -> Int -> Int -> MatrixDescriptor -> DevicePtr (Complex Float) -> DevicePtr Int32 -> DevicePtr Int32 -> Info_csrchol -> Int -> Int -> IO ()
ccsrcholBufferInfo _ _ _ _ _ _ _ _ _ _ = cusolverError "'ccsrcholBufferInfo' requires at least cuda-7.5"

zcsrcholBufferInfo :: Handle -> Int -> Int -> MatrixDescriptor -> DevicePtr (Complex Double) -> DevicePtr Int32 -> DevicePtr Int32 -> Info_csrchol -> Int -> Int -> IO ()
zcsrcholBufferInfo _ _ _ _ _ _ _ _ _ _ = cusolverError "'zcsrcholBufferInfo' requires at least cuda-7.5"

scsrcholFactor :: Handle -> Int -> Int -> MatrixDescriptor -> DevicePtr Float -> DevicePtr Int32 -> DevicePtr Int32 -> Info_csrchol -> DevicePtr () -> IO ()
scsrcholFactor _ _ _ _ _ _ _ _ _ = cusolverError "'scsrcholFactor' requires at least cuda-7.5"

dcsrcholFactor :: Handle -> Int -> Int -> MatrixDescriptor -> DevicePtr Double -> DevicePtr Int32 -> DevicePtr Int32 -> Info_csrchol -> DevicePtr () -> IO ()
dcsrcholFactor _ _ _ _ _ _ _ _ _ = cusolverError "'dcsrcholFactor' requires at least cuda-7.5"

ccsrcholFactor :: Handle -> Int -> Int -> MatrixDescriptor -> DevicePtr (Complex Float) -> DevicePtr Int32 -> DevicePtr Int32 -> Info_csrchol -> DevicePtr () -> IO ()
ccsrcholFactor _ _ _ _ _ _ _ _ _ = cusolverError "'ccsrcholFactor' requires at least cuda-7.5"

zcsrcholFactor :: Handle -> Int -> Int -> MatrixDescriptor -> DevicePtr (Complex Double) -> DevicePtr Int32 -> DevicePtr Int32 -> Info_csrchol -> DevicePtr () -> IO ()
zcsrcholFactor _ _ _ _ _ _ _ _ _ = cusolverError "'zcsrcholFactor' requires at least cuda-7.5"

scsrcholZeroPivot :: Handle -> Info_csrchol -> Float -> Int -> IO ()
scsrcholZeroPivot _ _ _ _ = cusolverError "'scsrcholZeroPivot' requires at least cuda-7.5"

dcsrcholZeroPivot :: Handle -> Info_csrchol -> Double -> Int -> IO ()
dcsrcholZeroPivot _ _ _ _ = cusolverError "'dcsrcholZeroPivot' requires at least cuda-7.5"

ccsrcholZeroPivot :: Handle -> Info_csrchol -> Float -> Int -> IO ()
ccsrcholZeroPivot _ _ _ _ = cusolverError "'ccsrcholZeroPivot' requires at least cuda-7.5"

zcsrcholZeroPivot :: Handle -> Info_csrchol -> Double -> Int -> IO ()
zcsrcholZeroPivot _ _ _ _ = cusolverError "'zcsrcholZeroPivot' requires at least cuda-7.5"

scsrcholSolve :: Handle -> Int -> DevicePtr Float -> DevicePtr Float -> Info_csrchol -> DevicePtr () -> IO ()
scsrcholSolve _ _ _ _ _ _ = cusolverError "'scsrcholSolve' requires at least cuda-7.5"

dcsrcholSolve :: Handle -> Int -> DevicePtr Double -> DevicePtr Double -> Info_csrchol -> DevicePtr () -> IO ()
dcsrcholSolve _ _ _ _ _ _ = cusolverError "'dcsrcholSolve' requires at least cuda-7.5"

ccsrcholSolve :: Handle -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Info_csrchol -> DevicePtr () -> IO ()
ccsrcholSolve _ _ _ _ _ _ = cusolverError "'ccsrcholSolve' requires at least cuda-7.5"

zcsrcholSolve :: Handle -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Info_csrchol -> DevicePtr () -> IO ()
zcsrcholSolve _ _ _ _ _ _ = cusolverError "'zcsrcholSolve' requires at least cuda-7.5"
#endif
