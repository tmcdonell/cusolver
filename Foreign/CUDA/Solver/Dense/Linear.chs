--
-- This module is auto-generated. Do not edit directly.
--

{-# LANGUAGE CPP #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
-- |
-- Module      : Foreign.CUDA.Solver.Dense.Linear
-- Copyright   : [2017..2020] Trevor L. McDonell
-- License     : BSD3
--
-- Maintainer  : Trevor L. McDonell <trevor.mcdonell@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- For more information see the cuSolver function reference:
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cuds-linearsolver-reference>
--

module Foreign.CUDA.Solver.Dense.Linear (

  Handle,
  Fill(..),
  Side(..),
  spotrf_bufferSize,
  dpotrf_bufferSize,
  cpotrf_bufferSize,
  zpotrf_bufferSize,
  spotrf,
  dpotrf,
  cpotrf,
  zpotrf,
  spotrs,
  dpotrs,
  cpotrs,
  zpotrs,
  sgetrf_bufferSize,
  dgetrf_bufferSize,
  cgetrf_bufferSize,
  zgetrf_bufferSize,
  sgetrf,
  dgetrf,
  cgetrf,
  zgetrf,
  sgetrs,
  dgetrs,
  cgetrs,
  zgetrs,
  sgeqrf_bufferSize,
  dgeqrf_bufferSize,
  cgeqrf_bufferSize,
  zgeqrf_bufferSize,
  sgeqrf,
  dgeqrf,
  cgeqrf,
  zgeqrf,
  sormqr,
  dormqr,
  cunmqr,
  zunmqr,
  ssytrf_bufferSize,
  dsytrf_bufferSize,
  csytrf_bufferSize,
  zsytrf_bufferSize,
  ssytrf,
  dsytrf,
  csytrf,
  zsytrf,
  sorgqr_bufferSize,
  dorgqr_bufferSize,
  cungqr_bufferSize,
  zungqr_bufferSize,
  sorgqr,
  dorgqr,
  cungqr,
  zungqr,
  sormqr_bufferSize,
  dormqr_bufferSize,
  cunmqr_bufferSize,
  zunmqr_bufferSize,
  spotri,
  dpotri,
  cpotri,
  zpotri,
  spotri_bufferSize,
  dpotri_bufferSize,
  cpotri_bufferSize,
  zpotri_bufferSize,

) where

import Data.Complex
import Foreign
import Foreign.C
import Foreign.Storable.Complex ()
import Foreign.CUDA.Ptr
import Foreign.CUDA.Solver.Dense.Context
import Foreign.CUDA.Solver.Dense.Analysis
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


{-# INLINEABLE spotrf_bufferSize #-}
{# fun unsafe cusolverDnSpotrf_bufferSize as spotrf_bufferSize { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dpotrf_bufferSize #-}
{# fun unsafe cusolverDnDpotrf_bufferSize as dpotrf_bufferSize { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE cpotrf_bufferSize #-}
{# fun unsafe cusolverDnCpotrf_bufferSize as cpotrf_bufferSize { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zpotrf_bufferSize #-}
{# fun unsafe cusolverDnZpotrf_bufferSize as zpotrf_bufferSize { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE spotrf #-}
{# fun unsafe cusolverDnSpotrf as spotrf { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dpotrf #-}
{# fun unsafe cusolverDnDpotrf as dpotrf { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE cpotrf #-}
{# fun unsafe cusolverDnCpotrf as cpotrf { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zpotrf #-}
{# fun unsafe cusolverDnZpotrf as zpotrf { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE spotrs #-}
{# fun unsafe cusolverDnSpotrs as spotrs { useHandle `Handle', cFromEnum `Fill', `Int', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dpotrs #-}
{# fun unsafe cusolverDnDpotrs as dpotrs { useHandle `Handle', cFromEnum `Fill', `Int', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE cpotrs #-}
{# fun unsafe cusolverDnCpotrs as cpotrs { useHandle `Handle', cFromEnum `Fill', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zpotrs #-}
{# fun unsafe cusolverDnZpotrs as zpotrs { useHandle `Handle', cFromEnum `Fill', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE sgetrf_bufferSize #-}
{# fun unsafe cusolverDnSgetrf_bufferSize as sgetrf_bufferSize { useHandle `Handle', `Int', `Int', useDevP `DevicePtr Float', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dgetrf_bufferSize #-}
{# fun unsafe cusolverDnDgetrf_bufferSize as dgetrf_bufferSize { useHandle `Handle', `Int', `Int', useDevP `DevicePtr Double', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE cgetrf_bufferSize #-}
{# fun unsafe cusolverDnCgetrf_bufferSize as cgetrf_bufferSize { useHandle `Handle', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zgetrf_bufferSize #-}
{# fun unsafe cusolverDnZgetrf_bufferSize as zgetrf_bufferSize { useHandle `Handle', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE sgetrf #-}
{# fun unsafe cusolverDnSgetrf as sgetrf { useHandle `Handle', `Int', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dgetrf #-}
{# fun unsafe cusolverDnDgetrf as dgetrf { useHandle `Handle', `Int', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE cgetrf #-}
{# fun unsafe cusolverDnCgetrf as cgetrf { useHandle `Handle', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zgetrf #-}
{# fun unsafe cusolverDnZgetrf as zgetrf { useHandle `Handle', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE sgetrs #-}
{# fun unsafe cusolverDnSgetrs as sgetrs { useHandle `Handle', cFromEnum `Operation', `Int', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dgetrs #-}
{# fun unsafe cusolverDnDgetrs as dgetrs { useHandle `Handle', cFromEnum `Operation', `Int', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE cgetrs #-}
{# fun unsafe cusolverDnCgetrs as cgetrs { useHandle `Handle', cFromEnum `Operation', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zgetrs #-}
{# fun unsafe cusolverDnZgetrs as zgetrs { useHandle `Handle', cFromEnum `Operation', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE sgeqrf_bufferSize #-}
{# fun unsafe cusolverDnSgeqrf_bufferSize as sgeqrf_bufferSize { useHandle `Handle', `Int', `Int', useDevP `DevicePtr Float', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dgeqrf_bufferSize #-}
{# fun unsafe cusolverDnDgeqrf_bufferSize as dgeqrf_bufferSize { useHandle `Handle', `Int', `Int', useDevP `DevicePtr Double', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE cgeqrf_bufferSize #-}
{# fun unsafe cusolverDnCgeqrf_bufferSize as cgeqrf_bufferSize { useHandle `Handle', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zgeqrf_bufferSize #-}
{# fun unsafe cusolverDnZgeqrf_bufferSize as zgeqrf_bufferSize { useHandle `Handle', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE sgeqrf #-}
{# fun unsafe cusolverDnSgeqrf as sgeqrf { useHandle `Handle', `Int', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dgeqrf #-}
{# fun unsafe cusolverDnDgeqrf as dgeqrf { useHandle `Handle', `Int', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE cgeqrf #-}
{# fun unsafe cusolverDnCgeqrf as cgeqrf { useHandle `Handle', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zgeqrf #-}
{# fun unsafe cusolverDnZgeqrf as zgeqrf { useHandle `Handle', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE sormqr #-}
{# fun unsafe cusolverDnSormqr as sormqr { useHandle `Handle', cFromEnum `Side', cFromEnum `Operation', `Int', `Int', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dormqr #-}
{# fun unsafe cusolverDnDormqr as dormqr { useHandle `Handle', cFromEnum `Side', cFromEnum `Operation', `Int', `Int', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE cunmqr #-}
{# fun unsafe cusolverDnCunmqr as cunmqr { useHandle `Handle', cFromEnum `Side', cFromEnum `Operation', `Int', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zunmqr #-}
{# fun unsafe cusolverDnZunmqr as zunmqr { useHandle `Handle', cFromEnum `Side', cFromEnum `Operation', `Int', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE ssytrf_bufferSize #-}
{# fun unsafe cusolverDnSsytrf_bufferSize as ssytrf_bufferSize { useHandle `Handle', `Int', useDevP `DevicePtr Float', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dsytrf_bufferSize #-}
{# fun unsafe cusolverDnDsytrf_bufferSize as dsytrf_bufferSize { useHandle `Handle', `Int', useDevP `DevicePtr Double', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE csytrf_bufferSize #-}
{# fun unsafe cusolverDnCsytrf_bufferSize as csytrf_bufferSize { useHandle `Handle', `Int', useDevP `DevicePtr (Complex Float)', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zsytrf_bufferSize #-}
{# fun unsafe cusolverDnZsytrf_bufferSize as zsytrf_bufferSize { useHandle `Handle', `Int', useDevP `DevicePtr (Complex Double)', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE ssytrf #-}
{# fun unsafe cusolverDnSsytrf as ssytrf { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dsytrf #-}
{# fun unsafe cusolverDnDsytrf as dsytrf { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE csytrf #-}
{# fun unsafe cusolverDnCsytrf as csytrf { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zsytrf #-}
{# fun unsafe cusolverDnZsytrf as zsytrf { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}
#if CUDA_VERSION >= 8000

{-# INLINEABLE sorgqr_bufferSize #-}
{# fun unsafe cusolverDnSorgqr_bufferSize as sorgqr_bufferSize { useHandle `Handle', `Int', `Int', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dorgqr_bufferSize #-}
{# fun unsafe cusolverDnDorgqr_bufferSize as dorgqr_bufferSize { useHandle `Handle', `Int', `Int', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE cungqr_bufferSize #-}
{# fun unsafe cusolverDnCungqr_bufferSize as cungqr_bufferSize { useHandle `Handle', `Int', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zungqr_bufferSize #-}
{# fun unsafe cusolverDnZungqr_bufferSize as zungqr_bufferSize { useHandle `Handle', `Int', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE sorgqr #-}
{# fun unsafe cusolverDnSorgqr as sorgqr { useHandle `Handle', `Int', `Int', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dorgqr #-}
{# fun unsafe cusolverDnDorgqr as dorgqr { useHandle `Handle', `Int', `Int', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE cungqr #-}
{# fun unsafe cusolverDnCungqr as cungqr { useHandle `Handle', `Int', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zungqr #-}
{# fun unsafe cusolverDnZungqr as zungqr { useHandle `Handle', `Int', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE sormqr_bufferSize #-}
{# fun unsafe cusolverDnSormqr_bufferSize as sormqr_bufferSize { useHandle `Handle', cFromEnum `Side', cFromEnum `Operation', `Int', `Int', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dormqr_bufferSize #-}
{# fun unsafe cusolverDnDormqr_bufferSize as dormqr_bufferSize { useHandle `Handle', cFromEnum `Side', cFromEnum `Operation', `Int', `Int', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE cunmqr_bufferSize #-}
{# fun unsafe cusolverDnCunmqr_bufferSize as cunmqr_bufferSize { useHandle `Handle', cFromEnum `Side', cFromEnum `Operation', `Int', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zunmqr_bufferSize #-}
{# fun unsafe cusolverDnZunmqr_bufferSize as zunmqr_bufferSize { useHandle `Handle', cFromEnum `Side', cFromEnum `Operation', `Int', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}
#else

sorgqr_bufferSize :: Handle -> Int -> Int -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> IO ()
sorgqr_bufferSize _ _ _ _ _ _ _ _ = cusolverError "'sorgqr_bufferSize' requires at least cuda-8.0"

dorgqr_bufferSize :: Handle -> Int -> Int -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> IO ()
dorgqr_bufferSize _ _ _ _ _ _ _ _ = cusolverError "'dorgqr_bufferSize' requires at least cuda-8.0"

cungqr_bufferSize :: Handle -> Int -> Int -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> IO ()
cungqr_bufferSize _ _ _ _ _ _ _ _ = cusolverError "'cungqr_bufferSize' requires at least cuda-8.0"

zungqr_bufferSize :: Handle -> Int -> Int -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> IO ()
zungqr_bufferSize _ _ _ _ _ _ _ _ = cusolverError "'zungqr_bufferSize' requires at least cuda-8.0"

sorgqr :: Handle -> Int -> Int -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> DevicePtr Float -> Int -> DevicePtr Int32 -> IO ()
sorgqr _ _ _ _ _ _ _ _ _ _ = cusolverError "'sorgqr' requires at least cuda-8.0"

dorgqr :: Handle -> Int -> Int -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> DevicePtr Double -> Int -> DevicePtr Int32 -> IO ()
dorgqr _ _ _ _ _ _ _ _ _ _ = cusolverError "'dorgqr' requires at least cuda-8.0"

cungqr :: Handle -> Int -> Int -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Int -> DevicePtr Int32 -> IO ()
cungqr _ _ _ _ _ _ _ _ _ _ = cusolverError "'cungqr' requires at least cuda-8.0"

zungqr :: Handle -> Int -> Int -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Int -> DevicePtr Int32 -> IO ()
zungqr _ _ _ _ _ _ _ _ _ _ = cusolverError "'zungqr' requires at least cuda-8.0"

sormqr_bufferSize :: Handle -> Side -> Operation -> Int -> Int -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> DevicePtr Float -> Int -> Int -> IO ()
sormqr_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'sormqr_bufferSize' requires at least cuda-8.0"

dormqr_bufferSize :: Handle -> Side -> Operation -> Int -> Int -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> DevicePtr Double -> Int -> Int -> IO ()
dormqr_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dormqr_bufferSize' requires at least cuda-8.0"

cunmqr_bufferSize :: Handle -> Side -> Operation -> Int -> Int -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Int -> Int -> IO ()
cunmqr_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'cunmqr_bufferSize' requires at least cuda-8.0"

zunmqr_bufferSize :: Handle -> Side -> Operation -> Int -> Int -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Int -> Int -> IO ()
zunmqr_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zunmqr_bufferSize' requires at least cuda-8.0"
#endif
#if CUDA_VERSION >= 10010

{-# INLINEABLE spotri #-}
{# fun unsafe cusolverDnSpotri as spotri { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dpotri #-}
{# fun unsafe cusolverDnDpotri as dpotri { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE cpotri #-}
{# fun unsafe cusolverDnCpotri as cpotri { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zpotri #-}
{# fun unsafe cusolverDnZpotri as zpotri { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE spotri_bufferSize #-}
{# fun unsafe cusolverDnSpotri_bufferSize as spotri_bufferSize { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dpotri_bufferSize #-}
{# fun unsafe cusolverDnDpotri_bufferSize as dpotri_bufferSize { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE cpotri_bufferSize #-}
{# fun unsafe cusolverDnCpotri_bufferSize as cpotri_bufferSize { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zpotri_bufferSize #-}
{# fun unsafe cusolverDnZpotri_bufferSize as zpotri_bufferSize { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}
#else

spotri :: Handle -> Fill -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> DevicePtr Int32 -> IO ()
spotri _ _ _ _ _ _ _ _ = cusolverError "'spotri' requires at least cuda-10.0"

dpotri :: Handle -> Fill -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> DevicePtr Int32 -> IO ()
dpotri _ _ _ _ _ _ _ _ = cusolverError "'dpotri' requires at least cuda-10.0"

cpotri :: Handle -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr Int32 -> IO ()
cpotri _ _ _ _ _ _ _ _ = cusolverError "'cpotri' requires at least cuda-10.0"

zpotri :: Handle -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr Int32 -> IO ()
zpotri _ _ _ _ _ _ _ _ = cusolverError "'zpotri' requires at least cuda-10.0"

spotri_bufferSize :: Handle -> Fill -> Int -> DevicePtr Float -> Int -> Int -> IO ()
spotri_bufferSize _ _ _ _ _ _ = cusolverError "'spotri_bufferSize' requires at least cuda-10.0"

dpotri_bufferSize :: Handle -> Fill -> Int -> DevicePtr Double -> Int -> Int -> IO ()
dpotri_bufferSize _ _ _ _ _ _ = cusolverError "'dpotri_bufferSize' requires at least cuda-10.0"

cpotri_bufferSize :: Handle -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> Int -> IO ()
cpotri_bufferSize _ _ _ _ _ _ = cusolverError "'cpotri_bufferSize' requires at least cuda-10.0"

zpotri_bufferSize :: Handle -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> Int -> IO ()
zpotri_bufferSize _ _ _ _ _ _ = cusolverError "'zpotri_bufferSize' requires at least cuda-10.0"
#endif
