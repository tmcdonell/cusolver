--
-- This module is auto-generated. Do not edit directly.
--

{-# LANGUAGE CPP #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
-- |
-- Module      : Foreign.CUDA.Solver.Dense.Eigenvalue
-- Copyright   : [2017] Trevor L. McDonell
-- License     : BSD3
--
-- Maintainer  : Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- For more information see the cuSolver function reference:
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cuds-eigensolver-reference>
--

module Foreign.CUDA.Solver.Dense.Eigenvalue (

  Handle,
  Fill(..),
  Side(..),
  Operation(..),
  EigMode(..),
  EigType(..),
  sgebrd_bufferSize,
  dgebrd_bufferSize,
  cgebrd_bufferSize,
  zgebrd_bufferSize,
  sgebrd,
  dgebrd,
  cgebrd,
  zgebrd,
  sgesvd_bufferSize,
  dgesvd_bufferSize,
  cgesvd_bufferSize,
  zgesvd_bufferSize,
  sgesvd,
  dgesvd,
  cgesvd,
  zgesvd,
  sorgbr_bufferSize,
  dorgbr_bufferSize,
  cungbr_bufferSize,
  zungbr_bufferSize,
  sorgbr,
  dorgbr,
  cungbr,
  zungbr,
  ssytrd_bufferSize,
  dsytrd_bufferSize,
  chetrd_bufferSize,
  zhetrd_bufferSize,
  ssytrd,
  dsytrd,
  chetrd,
  zhetrd,
  sormtr_bufferSize,
  dormtr_bufferSize,
  cunmtr_bufferSize,
  zunmtr_bufferSize,
  sormtr,
  dormtr,
  cunmtr,
  zunmtr,
  sorgtr_bufferSize,
  dorgtr_bufferSize,
  cungtr_bufferSize,
  zungtr_bufferSize,
  sorgtr,
  dorgtr,
  cungtr,
  zungtr,
  ssyevd_bufferSize,
  dsyevd_bufferSize,
  cheevd_bufferSize,
  zheevd_bufferSize,
  ssyevd,
  dsyevd,
  cheevd,
  zheevd,
  ssygvd_bufferSize,
  dsygvd_bufferSize,
  chegvd_bufferSize,
  zhegvd_bufferSize,
  ssygvd,
  dsygvd,
  chegvd,
  zhegvd,

) where

import Data.Complex
import Foreign
import Foreign.C
import Foreign.Storable.Complex ()
import Foreign.CUDA.Ptr
import Foreign.CUDA.Solver.Dense.Context
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


{-# INLINEABLE sgebrd_bufferSize #-}
{# fun unsafe cusolverDnSgebrd_bufferSize as sgebrd_bufferSize { useHandle `Handle', `Int', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dgebrd_bufferSize #-}
{# fun unsafe cusolverDnDgebrd_bufferSize as dgebrd_bufferSize { useHandle `Handle', `Int', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE cgebrd_bufferSize #-}
{# fun unsafe cusolverDnCgebrd_bufferSize as cgebrd_bufferSize { useHandle `Handle', `Int', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zgebrd_bufferSize #-}
{# fun unsafe cusolverDnZgebrd_bufferSize as zgebrd_bufferSize { useHandle `Handle', `Int', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE sgebrd #-}
{# fun unsafe cusolverDnSgebrd as sgebrd { useHandle `Handle', `Int', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', useDevP `DevicePtr Float', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dgebrd #-}
{# fun unsafe cusolverDnDgebrd as dgebrd { useHandle `Handle', `Int', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', useDevP `DevicePtr Double', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE cgebrd #-}
{# fun unsafe cusolverDnCgebrd as cgebrd { useHandle `Handle', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zgebrd #-}
{# fun unsafe cusolverDnZgebrd as zgebrd { useHandle `Handle', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE sgesvd_bufferSize #-}
{# fun unsafe cusolverDnSgesvd_bufferSize as sgesvd_bufferSize { useHandle `Handle', `Int', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dgesvd_bufferSize #-}
{# fun unsafe cusolverDnDgesvd_bufferSize as dgesvd_bufferSize { useHandle `Handle', `Int', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE cgesvd_bufferSize #-}
{# fun unsafe cusolverDnCgesvd_bufferSize as cgesvd_bufferSize { useHandle `Handle', `Int', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zgesvd_bufferSize #-}
{# fun unsafe cusolverDnZgesvd_bufferSize as zgesvd_bufferSize { useHandle `Handle', `Int', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE sgesvd #-}
{# fun unsafe cusolverDnSgesvd as sgesvd { useHandle `Handle', `Char', `Char', `Int', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dgesvd #-}
{# fun unsafe cusolverDnDgesvd as dgesvd { useHandle `Handle', `Char', `Char', `Int', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE cgesvd #-}
{# fun unsafe cusolverDnCgesvd as cgesvd { useHandle `Handle', `Char', `Char', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zgesvd #-}
{# fun unsafe cusolverDnZgesvd as zgesvd { useHandle `Handle', `Char', `Char', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}
#if CUDA_VERSION >= 8000

{-# INLINEABLE sorgbr_bufferSize #-}
{# fun unsafe cusolverDnSorgbr_bufferSize as sorgbr_bufferSize { useHandle `Handle', cFromEnum `Side', `Int', `Int', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dorgbr_bufferSize #-}
{# fun unsafe cusolverDnDorgbr_bufferSize as dorgbr_bufferSize { useHandle `Handle', cFromEnum `Side', `Int', `Int', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE cungbr_bufferSize #-}
{# fun unsafe cusolverDnCungbr_bufferSize as cungbr_bufferSize { useHandle `Handle', cFromEnum `Side', `Int', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zungbr_bufferSize #-}
{# fun unsafe cusolverDnZungbr_bufferSize as zungbr_bufferSize { useHandle `Handle', cFromEnum `Side', `Int', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE sorgbr #-}
{# fun unsafe cusolverDnSorgbr as sorgbr { useHandle `Handle', cFromEnum `Side', `Int', `Int', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dorgbr #-}
{# fun unsafe cusolverDnDorgbr as dorgbr { useHandle `Handle', cFromEnum `Side', `Int', `Int', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE cungbr #-}
{# fun unsafe cusolverDnCungbr as cungbr { useHandle `Handle', cFromEnum `Side', `Int', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zungbr #-}
{# fun unsafe cusolverDnZungbr as zungbr { useHandle `Handle', cFromEnum `Side', `Int', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE ssytrd_bufferSize #-}
{# fun unsafe cusolverDnSsytrd_bufferSize as ssytrd_bufferSize { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', useDevP `DevicePtr Float', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dsytrd_bufferSize #-}
{# fun unsafe cusolverDnDsytrd_bufferSize as dsytrd_bufferSize { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', useDevP `DevicePtr Double', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE chetrd_bufferSize #-}
{# fun unsafe cusolverDnChetrd_bufferSize as chetrd_bufferSize { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zhetrd_bufferSize #-}
{# fun unsafe cusolverDnZhetrd_bufferSize as zhetrd_bufferSize { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE ssytrd #-}
{# fun unsafe cusolverDnSsytrd as ssytrd { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dsytrd #-}
{# fun unsafe cusolverDnDsytrd as dsytrd { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE chetrd #-}
{# fun unsafe cusolverDnChetrd as chetrd { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zhetrd #-}
{# fun unsafe cusolverDnZhetrd as zhetrd { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE sormtr_bufferSize #-}
{# fun unsafe cusolverDnSormtr_bufferSize as sormtr_bufferSize { useHandle `Handle', cFromEnum `Side', cFromEnum `Fill', cFromEnum `Operation', `Int', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dormtr_bufferSize #-}
{# fun unsafe cusolverDnDormtr_bufferSize as dormtr_bufferSize { useHandle `Handle', cFromEnum `Side', cFromEnum `Fill', cFromEnum `Operation', `Int', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE cunmtr_bufferSize #-}
{# fun unsafe cusolverDnCunmtr_bufferSize as cunmtr_bufferSize { useHandle `Handle', cFromEnum `Side', cFromEnum `Fill', cFromEnum `Operation', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zunmtr_bufferSize #-}
{# fun unsafe cusolverDnZunmtr_bufferSize as zunmtr_bufferSize { useHandle `Handle', cFromEnum `Side', cFromEnum `Fill', cFromEnum `Operation', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE sormtr #-}
{# fun unsafe cusolverDnSormtr as sormtr { useHandle `Handle', cFromEnum `Side', cFromEnum `Fill', cFromEnum `Operation', `Int', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dormtr #-}
{# fun unsafe cusolverDnDormtr as dormtr { useHandle `Handle', cFromEnum `Side', cFromEnum `Fill', cFromEnum `Operation', `Int', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE cunmtr #-}
{# fun unsafe cusolverDnCunmtr as cunmtr { useHandle `Handle', cFromEnum `Side', cFromEnum `Fill', cFromEnum `Operation', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zunmtr #-}
{# fun unsafe cusolverDnZunmtr as zunmtr { useHandle `Handle', cFromEnum `Side', cFromEnum `Fill', cFromEnum `Operation', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE sorgtr_bufferSize #-}
{# fun unsafe cusolverDnSorgtr_bufferSize as sorgtr_bufferSize { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dorgtr_bufferSize #-}
{# fun unsafe cusolverDnDorgtr_bufferSize as dorgtr_bufferSize { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE cungtr_bufferSize #-}
{# fun unsafe cusolverDnCungtr_bufferSize as cungtr_bufferSize { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zungtr_bufferSize #-}
{# fun unsafe cusolverDnZungtr_bufferSize as zungtr_bufferSize { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE sorgtr #-}
{# fun unsafe cusolverDnSorgtr as sorgtr { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dorgtr #-}
{# fun unsafe cusolverDnDorgtr as dorgtr { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE cungtr #-}
{# fun unsafe cusolverDnCungtr as cungtr { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zungtr #-}
{# fun unsafe cusolverDnZungtr as zungtr { useHandle `Handle', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE ssyevd_bufferSize #-}
{# fun unsafe cusolverDnSsyevd_bufferSize as ssyevd_bufferSize { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dsyevd_bufferSize #-}
{# fun unsafe cusolverDnDsyevd_bufferSize as dsyevd_bufferSize { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE cheevd_bufferSize #-}
{# fun unsafe cusolverDnCheevd_bufferSize as cheevd_bufferSize { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zheevd_bufferSize #-}
{# fun unsafe cusolverDnZheevd_bufferSize as zheevd_bufferSize { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE ssyevd #-}
{# fun unsafe cusolverDnSsyevd as ssyevd { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dsyevd #-}
{# fun unsafe cusolverDnDsyevd as dsyevd { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE cheevd #-}
{# fun unsafe cusolverDnCheevd as cheevd { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zheevd #-}
{# fun unsafe cusolverDnZheevd as zheevd { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE ssygvd_bufferSize #-}
{# fun unsafe cusolverDnSsygvd_bufferSize as ssygvd_bufferSize { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dsygvd_bufferSize #-}
{# fun unsafe cusolverDnDsygvd_bufferSize as dsygvd_bufferSize { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE chegvd_bufferSize #-}
{# fun unsafe cusolverDnChegvd_bufferSize as chegvd_bufferSize { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zhegvd_bufferSize #-}
{# fun unsafe cusolverDnZhegvd_bufferSize as zhegvd_bufferSize { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE ssygvd #-}
{# fun unsafe cusolverDnSsygvd as ssygvd { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dsygvd #-}
{# fun unsafe cusolverDnDsygvd as dsygvd { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE chegvd #-}
{# fun unsafe cusolverDnChegvd as chegvd { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zhegvd #-}
{# fun unsafe cusolverDnZhegvd as zhegvd { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}
#else

sorgbr_bufferSize :: Handle -> Side -> Int -> Int -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> IO ()
sorgbr_bufferSize _ _ _ _ _ _ _ _ _ = cusolverError "'sorgbr_bufferSize' requires at least cuda-8.0"

dorgbr_bufferSize :: Handle -> Side -> Int -> Int -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> IO ()
dorgbr_bufferSize _ _ _ _ _ _ _ _ _ = cusolverError "'dorgbr_bufferSize' requires at least cuda-8.0"

cungbr_bufferSize :: Handle -> Side -> Int -> Int -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> IO ()
cungbr_bufferSize _ _ _ _ _ _ _ _ _ = cusolverError "'cungbr_bufferSize' requires at least cuda-8.0"

zungbr_bufferSize :: Handle -> Side -> Int -> Int -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> IO ()
zungbr_bufferSize _ _ _ _ _ _ _ _ _ = cusolverError "'zungbr_bufferSize' requires at least cuda-8.0"

sorgbr :: Handle -> Side -> Int -> Int -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> DevicePtr Float -> Int -> DevicePtr Int32 -> IO ()
sorgbr _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'sorgbr' requires at least cuda-8.0"

dorgbr :: Handle -> Side -> Int -> Int -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> DevicePtr Double -> Int -> DevicePtr Int32 -> IO ()
dorgbr _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dorgbr' requires at least cuda-8.0"

cungbr :: Handle -> Side -> Int -> Int -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Int -> DevicePtr Int32 -> IO ()
cungbr _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'cungbr' requires at least cuda-8.0"

zungbr :: Handle -> Side -> Int -> Int -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Int -> DevicePtr Int32 -> IO ()
zungbr _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zungbr' requires at least cuda-8.0"

ssytrd_bufferSize :: Handle -> Fill -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> DevicePtr Float -> DevicePtr Float -> Int -> IO ()
ssytrd_bufferSize _ _ _ _ _ _ _ _ _ = cusolverError "'ssytrd_bufferSize' requires at least cuda-8.0"

dsytrd_bufferSize :: Handle -> Fill -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> DevicePtr Double -> DevicePtr Double -> Int -> IO ()
dsytrd_bufferSize _ _ _ _ _ _ _ _ _ = cusolverError "'dsytrd_bufferSize' requires at least cuda-8.0"

chetrd_bufferSize :: Handle -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Int -> IO ()
chetrd_bufferSize _ _ _ _ _ _ _ _ _ = cusolverError "'chetrd_bufferSize' requires at least cuda-8.0"

zhetrd_bufferSize :: Handle -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Int -> IO ()
zhetrd_bufferSize _ _ _ _ _ _ _ _ _ = cusolverError "'zhetrd_bufferSize' requires at least cuda-8.0"

ssytrd :: Handle -> Fill -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> DevicePtr Float -> DevicePtr Float -> DevicePtr Float -> Int -> DevicePtr Int32 -> IO ()
ssytrd _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'ssytrd' requires at least cuda-8.0"

dsytrd :: Handle -> Fill -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> DevicePtr Double -> DevicePtr Double -> DevicePtr Double -> Int -> DevicePtr Int32 -> IO ()
dsytrd _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dsytrd' requires at least cuda-8.0"

chetrd :: Handle -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Int -> DevicePtr Int32 -> IO ()
chetrd _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'chetrd' requires at least cuda-8.0"

zhetrd :: Handle -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Int -> DevicePtr Int32 -> IO ()
zhetrd _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zhetrd' requires at least cuda-8.0"

sormtr_bufferSize :: Handle -> Side -> Fill -> Operation -> Int -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> DevicePtr Float -> Int -> Int -> IO ()
sormtr_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'sormtr_bufferSize' requires at least cuda-8.0"

dormtr_bufferSize :: Handle -> Side -> Fill -> Operation -> Int -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> DevicePtr Double -> Int -> Int -> IO ()
dormtr_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dormtr_bufferSize' requires at least cuda-8.0"

cunmtr_bufferSize :: Handle -> Side -> Fill -> Operation -> Int -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Int -> Int -> IO ()
cunmtr_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'cunmtr_bufferSize' requires at least cuda-8.0"

zunmtr_bufferSize :: Handle -> Side -> Fill -> Operation -> Int -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Int -> Int -> IO ()
zunmtr_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zunmtr_bufferSize' requires at least cuda-8.0"

sormtr :: Handle -> Side -> Fill -> Operation -> Int -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> DevicePtr Int32 -> IO ()
sormtr _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'sormtr' requires at least cuda-8.0"

dormtr :: Handle -> Side -> Fill -> Operation -> Int -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> DevicePtr Int32 -> IO ()
dormtr _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dormtr' requires at least cuda-8.0"

cunmtr :: Handle -> Side -> Fill -> Operation -> Int -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr Int32 -> IO ()
cunmtr _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'cunmtr' requires at least cuda-8.0"

zunmtr :: Handle -> Side -> Fill -> Operation -> Int -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr Int32 -> IO ()
zunmtr _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zunmtr' requires at least cuda-8.0"

sorgtr_bufferSize :: Handle -> Fill -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> IO ()
sorgtr_bufferSize _ _ _ _ _ _ _ = cusolverError "'sorgtr_bufferSize' requires at least cuda-8.0"

dorgtr_bufferSize :: Handle -> Fill -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> IO ()
dorgtr_bufferSize _ _ _ _ _ _ _ = cusolverError "'dorgtr_bufferSize' requires at least cuda-8.0"

cungtr_bufferSize :: Handle -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> IO ()
cungtr_bufferSize _ _ _ _ _ _ _ = cusolverError "'cungtr_bufferSize' requires at least cuda-8.0"

zungtr_bufferSize :: Handle -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> IO ()
zungtr_bufferSize _ _ _ _ _ _ _ = cusolverError "'zungtr_bufferSize' requires at least cuda-8.0"

sorgtr :: Handle -> Fill -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> DevicePtr Float -> Int -> DevicePtr Int32 -> IO ()
sorgtr _ _ _ _ _ _ _ _ _ = cusolverError "'sorgtr' requires at least cuda-8.0"

dorgtr :: Handle -> Fill -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> DevicePtr Double -> Int -> DevicePtr Int32 -> IO ()
dorgtr _ _ _ _ _ _ _ _ _ = cusolverError "'dorgtr' requires at least cuda-8.0"

cungtr :: Handle -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Int -> DevicePtr Int32 -> IO ()
cungtr _ _ _ _ _ _ _ _ _ = cusolverError "'cungtr' requires at least cuda-8.0"

zungtr :: Handle -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Int -> DevicePtr Int32 -> IO ()
zungtr _ _ _ _ _ _ _ _ _ = cusolverError "'zungtr' requires at least cuda-8.0"

ssyevd_bufferSize :: Handle -> EigMode -> Fill -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> IO ()
ssyevd_bufferSize _ _ _ _ _ _ _ _ = cusolverError "'ssyevd_bufferSize' requires at least cuda-8.0"

dsyevd_bufferSize :: Handle -> EigMode -> Fill -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> IO ()
dsyevd_bufferSize _ _ _ _ _ _ _ _ = cusolverError "'dsyevd_bufferSize' requires at least cuda-8.0"

cheevd_bufferSize :: Handle -> EigMode -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> IO ()
cheevd_bufferSize _ _ _ _ _ _ _ _ = cusolverError "'cheevd_bufferSize' requires at least cuda-8.0"

zheevd_bufferSize :: Handle -> EigMode -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> IO ()
zheevd_bufferSize _ _ _ _ _ _ _ _ = cusolverError "'zheevd_bufferSize' requires at least cuda-8.0"

ssyevd :: Handle -> EigMode -> Fill -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> DevicePtr Float -> Int -> DevicePtr Int32 -> IO ()
ssyevd _ _ _ _ _ _ _ _ _ _ = cusolverError "'ssyevd' requires at least cuda-8.0"

dsyevd :: Handle -> EigMode -> Fill -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> DevicePtr Double -> Int -> DevicePtr Int32 -> IO ()
dsyevd _ _ _ _ _ _ _ _ _ _ = cusolverError "'dsyevd' requires at least cuda-8.0"

cheevd :: Handle -> EigMode -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Int -> DevicePtr Int32 -> IO ()
cheevd _ _ _ _ _ _ _ _ _ _ = cusolverError "'cheevd' requires at least cuda-8.0"

zheevd :: Handle -> EigMode -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Int -> DevicePtr Int32 -> IO ()
zheevd _ _ _ _ _ _ _ _ _ _ = cusolverError "'zheevd' requires at least cuda-8.0"

ssygvd_bufferSize :: Handle -> EigType -> EigMode -> Fill -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> IO ()
ssygvd_bufferSize _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'ssygvd_bufferSize' requires at least cuda-8.0"

dsygvd_bufferSize :: Handle -> EigType -> EigMode -> Fill -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> IO ()
dsygvd_bufferSize _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dsygvd_bufferSize' requires at least cuda-8.0"

chegvd_bufferSize :: Handle -> EigType -> EigMode -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> IO ()
chegvd_bufferSize _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'chegvd_bufferSize' requires at least cuda-8.0"

zhegvd_bufferSize :: Handle -> EigType -> EigMode -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> IO ()
zhegvd_bufferSize _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zhegvd_bufferSize' requires at least cuda-8.0"

ssygvd :: Handle -> EigType -> EigMode -> Fill -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> DevicePtr Float -> Int -> DevicePtr Int32 -> IO ()
ssygvd _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'ssygvd' requires at least cuda-8.0"

dsygvd :: Handle -> EigType -> EigMode -> Fill -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> DevicePtr Double -> Int -> DevicePtr Int32 -> IO ()
dsygvd _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dsygvd' requires at least cuda-8.0"

chegvd :: Handle -> EigType -> EigMode -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Int -> DevicePtr Int32 -> IO ()
chegvd _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'chegvd' requires at least cuda-8.0"

zhegvd :: Handle -> EigType -> EigMode -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Int -> DevicePtr Int32 -> IO ()
zhegvd _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zhegvd' requires at least cuda-8.0"
#endif
