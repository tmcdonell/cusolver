--
-- This module is auto-generated. Do not edit directly.
--

{-# LANGUAGE CPP #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
-- |
-- Module      : Foreign.CUDA.Solver.Dense.Eigenvalue
-- Copyright   : [2017..2020] Trevor L. McDonell
-- License     : BSD3
--
-- Maintainer  : Trevor L. McDonell <trevor.mcdonell@gmail.com>
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
  EigRange(..),
  Info_gesvdj,
  Info_syevj,
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
  sgesvdj_bufferSize,
  dgesvdj_bufferSize,
  cgesvdj_bufferSize,
  zgesvdj_bufferSize,
  sgesvdj,
  dgesvdj,
  cgesvdj,
  zgesvdj,
  sgesvdjBatched_bufferSize,
  dgesvdjBatched_bufferSize,
  cgesvdjBatched_bufferSize,
  zgesvdjBatched_bufferSize,
  sgesvdjBatched,
  dgesvdjBatched,
  cgesvdjBatched,
  zgesvdjBatched,
  ssyevj_bufferSize,
  dsyevj_bufferSize,
  ssyevj,
  dsyevj,
  cheevj_bufferSize,
  zheevj_bufferSize,
  cheevj,
  zheevj,
  ssyevjBatched_bufferSize,
  dsyevjBatched_bufferSize,
  ssyevjBatched,
  dsyevjBatched,
  cheevjBatched_bufferSize,
  zheevjBatched_bufferSize,
  cheevjBatched,
  zheevjBatched,
  ssygvj_bufferSize,
  dsygvj_bufferSize,
  ssygvj,
  dsygvj,
  chegvj_bufferSize,
  zhegvj_bufferSize,
  chegvj,
  zhegvj,
  sgesvdaStridedBatched,
  dgesvdaStridedBatched,
  cgesvdaStridedBatched,
  zgesvdaStridedBatched,
  sgesvdaStridedBatched_bufferSize,
  dgesvdaStridedBatched_bufferSize,
  cgesvdaStridedBatched_bufferSize,
  zgesvdaStridedBatched_bufferSize,
  ssyevdx,
  dsyevdx,
  ssyevdx_bufferSize,
  dsyevdx_bufferSize,
  cheevdx,
  zheevdx,
  cheevdx_bufferSize,
  zheevdx_bufferSize,
  ssygvdx,
  dsygvdx,
  ssygvdx_bufferSize,
  dsygvdx_bufferSize,
  chegvdx,
  zhegvdx,
  chegvdx_bufferSize,
  zhegvdx_bufferSize,

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
#if CUDA_VERSION >= 9000

{-# INLINEABLE sgesvdj_bufferSize #-}
{# fun unsafe cusolverDnSgesvdj_bufferSize as sgesvdj_bufferSize { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', alloca- `Int' peekIntConv*, useInfo_gesvdj `Info_gesvdj' } -> `()' checkStatus*- #}

{-# INLINEABLE dgesvdj_bufferSize #-}
{# fun unsafe cusolverDnDgesvdj_bufferSize as dgesvdj_bufferSize { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', alloca- `Int' peekIntConv*, useInfo_gesvdj `Info_gesvdj' } -> `()' checkStatus*- #}

{-# INLINEABLE cgesvdj_bufferSize #-}
{# fun unsafe cusolverDnCgesvdj_bufferSize as cgesvdj_bufferSize { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', alloca- `Int' peekIntConv*, useInfo_gesvdj `Info_gesvdj' } -> `()' checkStatus*- #}

{-# INLINEABLE zgesvdj_bufferSize #-}
{# fun unsafe cusolverDnZgesvdj_bufferSize as zgesvdj_bufferSize { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', alloca- `Int' peekIntConv*, useInfo_gesvdj `Info_gesvdj' } -> `()' checkStatus*- #}

{-# INLINEABLE sgesvdj #-}
{# fun unsafe cusolverDnSgesvdj as sgesvdj { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32', useInfo_gesvdj `Info_gesvdj' } -> `()' checkStatus*- #}

{-# INLINEABLE dgesvdj #-}
{# fun unsafe cusolverDnDgesvdj as dgesvdj { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32', useInfo_gesvdj `Info_gesvdj' } -> `()' checkStatus*- #}

{-# INLINEABLE cgesvdj #-}
{# fun unsafe cusolverDnCgesvdj as cgesvdj { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32', useInfo_gesvdj `Info_gesvdj' } -> `()' checkStatus*- #}

{-# INLINEABLE zgesvdj #-}
{# fun unsafe cusolverDnZgesvdj as zgesvdj { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32', useInfo_gesvdj `Info_gesvdj' } -> `()' checkStatus*- #}

{-# INLINEABLE sgesvdjBatched_bufferSize #-}
{# fun unsafe cusolverDnSgesvdjBatched_bufferSize as sgesvdjBatched_bufferSize { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', alloca- `Int' peekIntConv*, useInfo_gesvdj `Info_gesvdj', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE dgesvdjBatched_bufferSize #-}
{# fun unsafe cusolverDnDgesvdjBatched_bufferSize as dgesvdjBatched_bufferSize { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', alloca- `Int' peekIntConv*, useInfo_gesvdj `Info_gesvdj', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE cgesvdjBatched_bufferSize #-}
{# fun unsafe cusolverDnCgesvdjBatched_bufferSize as cgesvdjBatched_bufferSize { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', alloca- `Int' peekIntConv*, useInfo_gesvdj `Info_gesvdj', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE zgesvdjBatched_bufferSize #-}
{# fun unsafe cusolverDnZgesvdjBatched_bufferSize as zgesvdjBatched_bufferSize { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', alloca- `Int' peekIntConv*, useInfo_gesvdj `Info_gesvdj', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE sgesvdjBatched #-}
{# fun unsafe cusolverDnSgesvdjBatched as sgesvdjBatched { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32', useInfo_gesvdj `Info_gesvdj', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE dgesvdjBatched #-}
{# fun unsafe cusolverDnDgesvdjBatched as dgesvdjBatched { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32', useInfo_gesvdj `Info_gesvdj', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE cgesvdjBatched #-}
{# fun unsafe cusolverDnCgesvdjBatched as cgesvdjBatched { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32', useInfo_gesvdj `Info_gesvdj', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE zgesvdjBatched #-}
{# fun unsafe cusolverDnZgesvdjBatched as zgesvdjBatched { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32', useInfo_gesvdj `Info_gesvdj', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE ssyevj_bufferSize #-}
{# fun unsafe cusolverDnSsyevj_bufferSize as ssyevj_bufferSize { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', alloca- `Int' peekIntConv*, useInfo_syevj `Info_syevj' } -> `()' checkStatus*- #}

{-# INLINEABLE dsyevj_bufferSize #-}
{# fun unsafe cusolverDnDsyevj_bufferSize as dsyevj_bufferSize { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', alloca- `Int' peekIntConv*, useInfo_syevj `Info_syevj' } -> `()' checkStatus*- #}

{-# INLINEABLE ssyevj #-}
{# fun unsafe cusolverDnSsyevj as ssyevj { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32', useInfo_syevj `Info_syevj' } -> `()' checkStatus*- #}

{-# INLINEABLE dsyevj #-}
{# fun unsafe cusolverDnDsyevj as dsyevj { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32', useInfo_syevj `Info_syevj' } -> `()' checkStatus*- #}

{-# INLINEABLE cheevj_bufferSize #-}
{# fun unsafe cusolverDnCheevj_bufferSize as cheevj_bufferSize { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', alloca- `Int' peekIntConv*, useInfo_syevj `Info_syevj' } -> `()' checkStatus*- #}

{-# INLINEABLE zheevj_bufferSize #-}
{# fun unsafe cusolverDnZheevj_bufferSize as zheevj_bufferSize { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', alloca- `Int' peekIntConv*, useInfo_syevj `Info_syevj' } -> `()' checkStatus*- #}

{-# INLINEABLE cheevj #-}
{# fun unsafe cusolverDnCheevj as cheevj { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32', useInfo_syevj `Info_syevj' } -> `()' checkStatus*- #}

{-# INLINEABLE zheevj #-}
{# fun unsafe cusolverDnZheevj as zheevj { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32', useInfo_syevj `Info_syevj' } -> `()' checkStatus*- #}

{-# INLINEABLE ssyevjBatched_bufferSize #-}
{# fun unsafe cusolverDnSsyevjBatched_bufferSize as ssyevjBatched_bufferSize { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', alloca- `Int' peekIntConv*, useInfo_syevj `Info_syevj', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE dsyevjBatched_bufferSize #-}
{# fun unsafe cusolverDnDsyevjBatched_bufferSize as dsyevjBatched_bufferSize { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', alloca- `Int' peekIntConv*, useInfo_syevj `Info_syevj', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE ssyevjBatched #-}
{# fun unsafe cusolverDnSsyevjBatched as ssyevjBatched { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32', useInfo_syevj `Info_syevj', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE dsyevjBatched #-}
{# fun unsafe cusolverDnDsyevjBatched as dsyevjBatched { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32', useInfo_syevj `Info_syevj', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE cheevjBatched_bufferSize #-}
{# fun unsafe cusolverDnCheevjBatched_bufferSize as cheevjBatched_bufferSize { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', alloca- `Int' peekIntConv*, useInfo_syevj `Info_syevj', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE zheevjBatched_bufferSize #-}
{# fun unsafe cusolverDnZheevjBatched_bufferSize as zheevjBatched_bufferSize { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', alloca- `Int' peekIntConv*, useInfo_syevj `Info_syevj', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE cheevjBatched #-}
{# fun unsafe cusolverDnCheevjBatched as cheevjBatched { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32', useInfo_syevj `Info_syevj', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE zheevjBatched #-}
{# fun unsafe cusolverDnZheevjBatched as zheevjBatched { useHandle `Handle', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32', useInfo_syevj `Info_syevj', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE ssygvj_bufferSize #-}
{# fun unsafe cusolverDnSsygvj_bufferSize as ssygvj_bufferSize { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', alloca- `Int' peekIntConv*, useInfo_syevj `Info_syevj' } -> `()' checkStatus*- #}

{-# INLINEABLE dsygvj_bufferSize #-}
{# fun unsafe cusolverDnDsygvj_bufferSize as dsygvj_bufferSize { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', alloca- `Int' peekIntConv*, useInfo_syevj `Info_syevj' } -> `()' checkStatus*- #}

{-# INLINEABLE ssygvj #-}
{# fun unsafe cusolverDnSsygvj as ssygvj { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32', useInfo_syevj `Info_syevj' } -> `()' checkStatus*- #}

{-# INLINEABLE dsygvj #-}
{# fun unsafe cusolverDnDsygvj as dsygvj { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32', useInfo_syevj `Info_syevj' } -> `()' checkStatus*- #}

{-# INLINEABLE chegvj_bufferSize #-}
{# fun unsafe cusolverDnChegvj_bufferSize as chegvj_bufferSize { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', alloca- `Int' peekIntConv*, useInfo_syevj `Info_syevj' } -> `()' checkStatus*- #}

{-# INLINEABLE zhegvj_bufferSize #-}
{# fun unsafe cusolverDnZhegvj_bufferSize as zhegvj_bufferSize { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', alloca- `Int' peekIntConv*, useInfo_syevj `Info_syevj' } -> `()' checkStatus*- #}

{-# INLINEABLE chegvj #-}
{# fun unsafe cusolverDnChegvj as chegvj { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32', useInfo_syevj `Info_syevj' } -> `()' checkStatus*- #}

{-# INLINEABLE zhegvj #-}
{# fun unsafe cusolverDnZhegvj as zhegvj { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32', useInfo_syevj `Info_syevj' } -> `()' checkStatus*- #}
#else

sgesvdj_bufferSize :: Handle -> EigMode -> Int -> Int -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> Int -> Info_gesvdj -> IO ()
sgesvdj_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'sgesvdj_bufferSize' requires at least cuda-9.0"

dgesvdj_bufferSize :: Handle -> EigMode -> Int -> Int -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> Int -> Info_gesvdj -> IO ()
dgesvdj_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dgesvdj_bufferSize' requires at least cuda-9.0"

cgesvdj_bufferSize :: Handle -> EigMode -> Int -> Int -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> Int -> Info_gesvdj -> IO ()
cgesvdj_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'cgesvdj_bufferSize' requires at least cuda-9.0"

zgesvdj_bufferSize :: Handle -> EigMode -> Int -> Int -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> Int -> Info_gesvdj -> IO ()
zgesvdj_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zgesvdj_bufferSize' requires at least cuda-9.0"

sgesvdj :: Handle -> EigMode -> Int -> Int -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> DevicePtr Int32 -> Info_gesvdj -> IO ()
sgesvdj _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'sgesvdj' requires at least cuda-9.0"

dgesvdj :: Handle -> EigMode -> Int -> Int -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> DevicePtr Int32 -> Info_gesvdj -> IO ()
dgesvdj _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dgesvdj' requires at least cuda-9.0"

cgesvdj :: Handle -> EigMode -> Int -> Int -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr Int32 -> Info_gesvdj -> IO ()
cgesvdj _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'cgesvdj' requires at least cuda-9.0"

zgesvdj :: Handle -> EigMode -> Int -> Int -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr Int32 -> Info_gesvdj -> IO ()
zgesvdj _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zgesvdj' requires at least cuda-9.0"

sgesvdjBatched_bufferSize :: Handle -> EigMode -> Int -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> Int -> Info_gesvdj -> Int -> IO ()
sgesvdjBatched_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'sgesvdjBatched_bufferSize' requires at least cuda-9.0"

dgesvdjBatched_bufferSize :: Handle -> EigMode -> Int -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> Int -> Info_gesvdj -> Int -> IO ()
dgesvdjBatched_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dgesvdjBatched_bufferSize' requires at least cuda-9.0"

cgesvdjBatched_bufferSize :: Handle -> EigMode -> Int -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> Int -> Info_gesvdj -> Int -> IO ()
cgesvdjBatched_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'cgesvdjBatched_bufferSize' requires at least cuda-9.0"

zgesvdjBatched_bufferSize :: Handle -> EigMode -> Int -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> Int -> Info_gesvdj -> Int -> IO ()
zgesvdjBatched_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zgesvdjBatched_bufferSize' requires at least cuda-9.0"

sgesvdjBatched :: Handle -> EigMode -> Int -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> DevicePtr Int32 -> Info_gesvdj -> Int -> IO ()
sgesvdjBatched _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'sgesvdjBatched' requires at least cuda-9.0"

dgesvdjBatched :: Handle -> EigMode -> Int -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> DevicePtr Int32 -> Info_gesvdj -> Int -> IO ()
dgesvdjBatched _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dgesvdjBatched' requires at least cuda-9.0"

cgesvdjBatched :: Handle -> EigMode -> Int -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr Int32 -> Info_gesvdj -> Int -> IO ()
cgesvdjBatched _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'cgesvdjBatched' requires at least cuda-9.0"

zgesvdjBatched :: Handle -> EigMode -> Int -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr Int32 -> Info_gesvdj -> Int -> IO ()
zgesvdjBatched _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zgesvdjBatched' requires at least cuda-9.0"

ssyevj_bufferSize :: Handle -> EigMode -> Fill -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> Info_syevj -> IO ()
ssyevj_bufferSize _ _ _ _ _ _ _ _ _ = cusolverError "'ssyevj_bufferSize' requires at least cuda-9.0"

dsyevj_bufferSize :: Handle -> EigMode -> Fill -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> Info_syevj -> IO ()
dsyevj_bufferSize _ _ _ _ _ _ _ _ _ = cusolverError "'dsyevj_bufferSize' requires at least cuda-9.0"

ssyevj :: Handle -> EigMode -> Fill -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> DevicePtr Float -> Int -> DevicePtr Int32 -> Info_syevj -> IO ()
ssyevj _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'ssyevj' requires at least cuda-9.0"

dsyevj :: Handle -> EigMode -> Fill -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> DevicePtr Double -> Int -> DevicePtr Int32 -> Info_syevj -> IO ()
dsyevj _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dsyevj' requires at least cuda-9.0"

cheevj_bufferSize :: Handle -> EigMode -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> Info_syevj -> IO ()
cheevj_bufferSize _ _ _ _ _ _ _ _ _ = cusolverError "'cheevj_bufferSize' requires at least cuda-9.0"

zheevj_bufferSize :: Handle -> EigMode -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> Info_syevj -> IO ()
zheevj_bufferSize _ _ _ _ _ _ _ _ _ = cusolverError "'zheevj_bufferSize' requires at least cuda-9.0"

cheevj :: Handle -> EigMode -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Int -> DevicePtr Int32 -> Info_syevj -> IO ()
cheevj _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'cheevj' requires at least cuda-9.0"

zheevj :: Handle -> EigMode -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Int -> DevicePtr Int32 -> Info_syevj -> IO ()
zheevj _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zheevj' requires at least cuda-9.0"

ssyevjBatched_bufferSize :: Handle -> EigMode -> Fill -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> Info_syevj -> Int -> IO ()
ssyevjBatched_bufferSize _ _ _ _ _ _ _ _ _ _ = cusolverError "'ssyevjBatched_bufferSize' requires at least cuda-9.0"

dsyevjBatched_bufferSize :: Handle -> EigMode -> Fill -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> Info_syevj -> Int -> IO ()
dsyevjBatched_bufferSize _ _ _ _ _ _ _ _ _ _ = cusolverError "'dsyevjBatched_bufferSize' requires at least cuda-9.0"

ssyevjBatched :: Handle -> EigMode -> Fill -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> DevicePtr Float -> Int -> DevicePtr Int32 -> Info_syevj -> Int -> IO ()
ssyevjBatched _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'ssyevjBatched' requires at least cuda-9.0"

dsyevjBatched :: Handle -> EigMode -> Fill -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> DevicePtr Double -> Int -> DevicePtr Int32 -> Info_syevj -> Int -> IO ()
dsyevjBatched _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dsyevjBatched' requires at least cuda-9.0"

cheevjBatched_bufferSize :: Handle -> EigMode -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> Info_syevj -> Int -> IO ()
cheevjBatched_bufferSize _ _ _ _ _ _ _ _ _ _ = cusolverError "'cheevjBatched_bufferSize' requires at least cuda-9.0"

zheevjBatched_bufferSize :: Handle -> EigMode -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> Info_syevj -> Int -> IO ()
zheevjBatched_bufferSize _ _ _ _ _ _ _ _ _ _ = cusolverError "'zheevjBatched_bufferSize' requires at least cuda-9.0"

cheevjBatched :: Handle -> EigMode -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Int -> DevicePtr Int32 -> Info_syevj -> Int -> IO ()
cheevjBatched _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'cheevjBatched' requires at least cuda-9.0"

zheevjBatched :: Handle -> EigMode -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Int -> DevicePtr Int32 -> Info_syevj -> Int -> IO ()
zheevjBatched _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zheevjBatched' requires at least cuda-9.0"

ssygvj_bufferSize :: Handle -> EigType -> EigMode -> Fill -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> Info_syevj -> IO ()
ssygvj_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'ssygvj_bufferSize' requires at least cuda-9.0"

dsygvj_bufferSize :: Handle -> EigType -> EigMode -> Fill -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> Info_syevj -> IO ()
dsygvj_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dsygvj_bufferSize' requires at least cuda-9.0"

ssygvj :: Handle -> EigType -> EigMode -> Fill -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> DevicePtr Float -> Int -> DevicePtr Int32 -> Info_syevj -> IO ()
ssygvj _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'ssygvj' requires at least cuda-9.0"

dsygvj :: Handle -> EigType -> EigMode -> Fill -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> DevicePtr Double -> Int -> DevicePtr Int32 -> Info_syevj -> IO ()
dsygvj _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dsygvj' requires at least cuda-9.0"

chegvj_bufferSize :: Handle -> EigType -> EigMode -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> Info_syevj -> IO ()
chegvj_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'chegvj_bufferSize' requires at least cuda-9.0"

zhegvj_bufferSize :: Handle -> EigType -> EigMode -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> Info_syevj -> IO ()
zhegvj_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zhegvj_bufferSize' requires at least cuda-9.0"

chegvj :: Handle -> EigType -> EigMode -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> DevicePtr (Complex Float) -> Int -> DevicePtr Int32 -> Info_syevj -> IO ()
chegvj _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'chegvj' requires at least cuda-9.0"

zhegvj :: Handle -> EigType -> EigMode -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> DevicePtr (Complex Double) -> Int -> DevicePtr Int32 -> Info_syevj -> IO ()
zhegvj _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zhegvj' requires at least cuda-9.0"
#endif
#if CUDA_VERSION >= 10010

{-# INLINEABLE sgesvdaStridedBatched #-}
{# fun unsafe cusolverDnSgesvdaStridedBatched as sgesvdaStridedBatched { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', `Int', useDevP `DevicePtr Float', `Int', `Int64', useDevP `DevicePtr Float', `Int64', useDevP `DevicePtr Float', `Int', `Int64', useDevP `DevicePtr Float', `Int', `Int64', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32', castPtr `Ptr Double', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE dgesvdaStridedBatched #-}
{# fun unsafe cusolverDnDgesvdaStridedBatched as dgesvdaStridedBatched { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', `Int', useDevP `DevicePtr Double', `Int', `Int64', useDevP `DevicePtr Double', `Int64', useDevP `DevicePtr Double', `Int', `Int64', useDevP `DevicePtr Double', `Int', `Int64', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32', castPtr `Ptr Double', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE cgesvdaStridedBatched #-}
{# fun unsafe cusolverDnCgesvdaStridedBatched as cgesvdaStridedBatched { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', `Int64', useDevP `DevicePtr (Complex Float)', `Int64', useDevP `DevicePtr (Complex Float)', `Int', `Int64', useDevP `DevicePtr (Complex Float)', `Int', `Int64', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32', castPtr `Ptr Double', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE zgesvdaStridedBatched #-}
{# fun unsafe cusolverDnZgesvdaStridedBatched as zgesvdaStridedBatched { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', `Int64', useDevP `DevicePtr (Complex Double)', `Int64', useDevP `DevicePtr (Complex Double)', `Int', `Int64', useDevP `DevicePtr (Complex Double)', `Int', `Int64', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32', castPtr `Ptr Double', `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE sgesvdaStridedBatched_bufferSize #-}
{# fun unsafe cusolverDnSgesvdaStridedBatched_bufferSize as sgesvdaStridedBatched_bufferSize { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', `Int', useDevP `DevicePtr Float', `Int', `Int64', useDevP `DevicePtr Float', `Int64', useDevP `DevicePtr Float', `Int', `Int64', useDevP `DevicePtr Float', `Int', `Int64', alloca- `Int' peekIntConv*, `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE dgesvdaStridedBatched_bufferSize #-}
{# fun unsafe cusolverDnDgesvdaStridedBatched_bufferSize as dgesvdaStridedBatched_bufferSize { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', `Int', useDevP `DevicePtr Double', `Int', `Int64', useDevP `DevicePtr Double', `Int64', useDevP `DevicePtr Double', `Int', `Int64', useDevP `DevicePtr Double', `Int', `Int64', alloca- `Int' peekIntConv*, `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE cgesvdaStridedBatched_bufferSize #-}
{# fun unsafe cusolverDnCgesvdaStridedBatched_bufferSize as cgesvdaStridedBatched_bufferSize { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', `Int', useDevP `DevicePtr (Complex Float)', `Int', `Int64', useDevP `DevicePtr (Complex Float)', `Int64', useDevP `DevicePtr (Complex Float)', `Int', `Int64', useDevP `DevicePtr (Complex Float)', `Int', `Int64', alloca- `Int' peekIntConv*, `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE zgesvdaStridedBatched_bufferSize #-}
{# fun unsafe cusolverDnZgesvdaStridedBatched_bufferSize as zgesvdaStridedBatched_bufferSize { useHandle `Handle', cFromEnum `EigMode', `Int', `Int', `Int', useDevP `DevicePtr (Complex Double)', `Int', `Int64', useDevP `DevicePtr (Complex Double)', `Int64', useDevP `DevicePtr (Complex Double)', `Int', `Int64', useDevP `DevicePtr (Complex Double)', `Int', `Int64', alloca- `Int' peekIntConv*, `Int' } -> `()' checkStatus*- #}

{-# INLINEABLE ssyevdx #-}
{# fun unsafe cusolverDnSsyevdx as ssyevdx { useHandle `Handle', cFromEnum `EigMode', cFromEnum `EigRange', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', CFloat `Float', CFloat `Float', `Int', `Int', alloca- `Int' peekIntConv*, useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dsyevdx #-}
{# fun unsafe cusolverDnDsyevdx as dsyevdx { useHandle `Handle', cFromEnum `EigMode', cFromEnum `EigRange', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', CDouble `Double', CDouble `Double', `Int', `Int', alloca- `Int' peekIntConv*, useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE ssyevdx_bufferSize #-}
{# fun unsafe cusolverDnSsyevdx_bufferSize as ssyevdx_bufferSize { useHandle `Handle', cFromEnum `EigMode', cFromEnum `EigRange', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', CFloat `Float', CFloat `Float', `Int', `Int', alloca- `Int' peekIntConv*, useDevP `DevicePtr Float', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dsyevdx_bufferSize #-}
{# fun unsafe cusolverDnDsyevdx_bufferSize as dsyevdx_bufferSize { useHandle `Handle', cFromEnum `EigMode', cFromEnum `EigRange', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', CDouble `Double', CDouble `Double', `Int', `Int', alloca- `Int' peekIntConv*, useDevP `DevicePtr Double', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE cheevdx #-}
{# fun unsafe cusolverDnCheevdx as cheevdx { useHandle `Handle', cFromEnum `EigMode', cFromEnum `EigRange', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', CFloat `Float', CFloat `Float', `Int', `Int', alloca- `Int' peekIntConv*, useDevP `DevicePtr Float', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zheevdx #-}
{# fun unsafe cusolverDnZheevdx as zheevdx { useHandle `Handle', cFromEnum `EigMode', cFromEnum `EigRange', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', CDouble `Double', CDouble `Double', `Int', `Int', alloca- `Int' peekIntConv*, useDevP `DevicePtr Double', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE cheevdx_bufferSize #-}
{# fun unsafe cusolverDnCheevdx_bufferSize as cheevdx_bufferSize { useHandle `Handle', cFromEnum `EigMode', cFromEnum `EigRange', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', CFloat `Float', CFloat `Float', `Int', `Int', alloca- `Int' peekIntConv*, useDevP `DevicePtr Float', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zheevdx_bufferSize #-}
{# fun unsafe cusolverDnZheevdx_bufferSize as zheevdx_bufferSize { useHandle `Handle', cFromEnum `EigMode', cFromEnum `EigRange', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', CDouble `Double', CDouble `Double', `Int', `Int', alloca- `Int' peekIntConv*, useDevP `DevicePtr Double', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE ssygvdx #-}
{# fun unsafe cusolverDnSsygvdx as ssygvdx { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `EigRange', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', CFloat `Float', CFloat `Float', `Int', `Int', alloca- `Int' peekIntConv*, useDevP `DevicePtr Float', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE dsygvdx #-}
{# fun unsafe cusolverDnDsygvdx as dsygvdx { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `EigRange', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', CDouble `Double', CDouble `Double', `Int', `Int', alloca- `Int' peekIntConv*, useDevP `DevicePtr Double', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE ssygvdx_bufferSize #-}
{# fun unsafe cusolverDnSsygvdx_bufferSize as ssygvdx_bufferSize { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `EigRange', cFromEnum `Fill', `Int', useDevP `DevicePtr Float', `Int', useDevP `DevicePtr Float', `Int', CFloat `Float', CFloat `Float', `Int', `Int', alloca- `Int' peekIntConv*, useDevP `DevicePtr Float', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dsygvdx_bufferSize #-}
{# fun unsafe cusolverDnDsygvdx_bufferSize as dsygvdx_bufferSize { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `EigRange', cFromEnum `Fill', `Int', useDevP `DevicePtr Double', `Int', useDevP `DevicePtr Double', `Int', CDouble `Double', CDouble `Double', `Int', `Int', alloca- `Int' peekIntConv*, useDevP `DevicePtr Double', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE chegvdx #-}
{# fun unsafe cusolverDnChegvdx as chegvdx { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `EigRange', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', CFloat `Float', CFloat `Float', `Int', `Int', alloca- `Int' peekIntConv*, useDevP `DevicePtr Float', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE zhegvdx #-}
{# fun unsafe cusolverDnZhegvdx as zhegvdx { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `EigRange', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', CDouble `Double', CDouble `Double', `Int', `Int', alloca- `Int' peekIntConv*, useDevP `DevicePtr Double', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr Int32' } -> `()' checkStatus*- #}

{-# INLINEABLE chegvdx_bufferSize #-}
{# fun unsafe cusolverDnChegvdx_bufferSize as chegvdx_bufferSize { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `EigRange', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Float)', `Int', useDevP `DevicePtr (Complex Float)', `Int', CFloat `Float', CFloat `Float', `Int', `Int', alloca- `Int' peekIntConv*, useDevP `DevicePtr Float', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zhegvdx_bufferSize #-}
{# fun unsafe cusolverDnZhegvdx_bufferSize as zhegvdx_bufferSize { useHandle `Handle', cFromEnum `EigType', cFromEnum `EigMode', cFromEnum `EigRange', cFromEnum `Fill', `Int', useDevP `DevicePtr (Complex Double)', `Int', useDevP `DevicePtr (Complex Double)', `Int', CDouble `Double', CDouble `Double', `Int', `Int', alloca- `Int' peekIntConv*, useDevP `DevicePtr Double', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}
#else

sgesvdaStridedBatched :: Handle -> EigMode -> Int -> Int -> Int -> DevicePtr Float -> Int -> Int64 -> DevicePtr Float -> Int64 -> DevicePtr Float -> Int -> Int64 -> DevicePtr Float -> Int -> Int64 -> DevicePtr Float -> Int -> DevicePtr Int32 -> Ptr Double -> Int -> IO ()
sgesvdaStridedBatched _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'sgesvdaStridedBatched' requires at least cuda-10.0"

dgesvdaStridedBatched :: Handle -> EigMode -> Int -> Int -> Int -> DevicePtr Double -> Int -> Int64 -> DevicePtr Double -> Int64 -> DevicePtr Double -> Int -> Int64 -> DevicePtr Double -> Int -> Int64 -> DevicePtr Double -> Int -> DevicePtr Int32 -> Ptr Double -> Int -> IO ()
dgesvdaStridedBatched _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dgesvdaStridedBatched' requires at least cuda-10.0"

cgesvdaStridedBatched :: Handle -> EigMode -> Int -> Int -> Int -> DevicePtr (Complex Float) -> Int -> Int64 -> DevicePtr (Complex Float) -> Int64 -> DevicePtr (Complex Float) -> Int -> Int64 -> DevicePtr (Complex Float) -> Int -> Int64 -> DevicePtr (Complex Float) -> Int -> DevicePtr Int32 -> Ptr Double -> Int -> IO ()
cgesvdaStridedBatched _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'cgesvdaStridedBatched' requires at least cuda-10.0"

zgesvdaStridedBatched :: Handle -> EigMode -> Int -> Int -> Int -> DevicePtr (Complex Double) -> Int -> Int64 -> DevicePtr (Complex Double) -> Int64 -> DevicePtr (Complex Double) -> Int -> Int64 -> DevicePtr (Complex Double) -> Int -> Int64 -> DevicePtr (Complex Double) -> Int -> DevicePtr Int32 -> Ptr Double -> Int -> IO ()
zgesvdaStridedBatched _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zgesvdaStridedBatched' requires at least cuda-10.0"

sgesvdaStridedBatched_bufferSize :: Handle -> EigMode -> Int -> Int -> Int -> DevicePtr Float -> Int -> Int64 -> DevicePtr Float -> Int64 -> DevicePtr Float -> Int -> Int64 -> DevicePtr Float -> Int -> Int64 -> Int -> Int -> IO ()
sgesvdaStridedBatched_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'sgesvdaStridedBatched_bufferSize' requires at least cuda-10.0"

dgesvdaStridedBatched_bufferSize :: Handle -> EigMode -> Int -> Int -> Int -> DevicePtr Double -> Int -> Int64 -> DevicePtr Double -> Int64 -> DevicePtr Double -> Int -> Int64 -> DevicePtr Double -> Int -> Int64 -> Int -> Int -> IO ()
dgesvdaStridedBatched_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dgesvdaStridedBatched_bufferSize' requires at least cuda-10.0"

cgesvdaStridedBatched_bufferSize :: Handle -> EigMode -> Int -> Int -> Int -> DevicePtr (Complex Float) -> Int -> Int64 -> DevicePtr (Complex Float) -> Int64 -> DevicePtr (Complex Float) -> Int -> Int64 -> DevicePtr (Complex Float) -> Int -> Int64 -> Int -> Int -> IO ()
cgesvdaStridedBatched_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'cgesvdaStridedBatched_bufferSize' requires at least cuda-10.0"

zgesvdaStridedBatched_bufferSize :: Handle -> EigMode -> Int -> Int -> Int -> DevicePtr (Complex Double) -> Int -> Int64 -> DevicePtr (Complex Double) -> Int64 -> DevicePtr (Complex Double) -> Int -> Int64 -> DevicePtr (Complex Double) -> Int -> Int64 -> Int -> Int -> IO ()
zgesvdaStridedBatched_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zgesvdaStridedBatched_bufferSize' requires at least cuda-10.0"

ssyevdx :: Handle -> EigMode -> EigRange -> Fill -> Int -> DevicePtr Float -> Int -> Float -> Float -> Int -> Int -> Int -> DevicePtr Float -> DevicePtr Float -> Int -> DevicePtr Int32 -> IO ()
ssyevdx _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'ssyevdx' requires at least cuda-10.0"

dsyevdx :: Handle -> EigMode -> EigRange -> Fill -> Int -> DevicePtr Double -> Int -> Double -> Double -> Int -> Int -> Int -> DevicePtr Double -> DevicePtr Double -> Int -> DevicePtr Int32 -> IO ()
dsyevdx _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dsyevdx' requires at least cuda-10.0"

ssyevdx_bufferSize :: Handle -> EigMode -> EigRange -> Fill -> Int -> DevicePtr Float -> Int -> Float -> Float -> Int -> Int -> Int -> DevicePtr Float -> Int -> IO ()
ssyevdx_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'ssyevdx_bufferSize' requires at least cuda-10.0"

dsyevdx_bufferSize :: Handle -> EigMode -> EigRange -> Fill -> Int -> DevicePtr Double -> Int -> Double -> Double -> Int -> Int -> Int -> DevicePtr Double -> Int -> IO ()
dsyevdx_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dsyevdx_bufferSize' requires at least cuda-10.0"

cheevdx :: Handle -> EigMode -> EigRange -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> Float -> Float -> Int -> Int -> Int -> DevicePtr Float -> DevicePtr (Complex Float) -> Int -> DevicePtr Int32 -> IO ()
cheevdx _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'cheevdx' requires at least cuda-10.0"

zheevdx :: Handle -> EigMode -> EigRange -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> Double -> Double -> Int -> Int -> Int -> DevicePtr Double -> DevicePtr (Complex Double) -> Int -> DevicePtr Int32 -> IO ()
zheevdx _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zheevdx' requires at least cuda-10.0"

cheevdx_bufferSize :: Handle -> EigMode -> EigRange -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> Float -> Float -> Int -> Int -> Int -> DevicePtr Float -> Int -> IO ()
cheevdx_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'cheevdx_bufferSize' requires at least cuda-10.0"

zheevdx_bufferSize :: Handle -> EigMode -> EigRange -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> Double -> Double -> Int -> Int -> Int -> DevicePtr Double -> Int -> IO ()
zheevdx_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zheevdx_bufferSize' requires at least cuda-10.0"

ssygvdx :: Handle -> EigType -> EigMode -> EigRange -> Fill -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> Float -> Float -> Int -> Int -> Int -> DevicePtr Float -> DevicePtr Float -> Int -> DevicePtr Int32 -> IO ()
ssygvdx _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'ssygvdx' requires at least cuda-10.0"

dsygvdx :: Handle -> EigType -> EigMode -> EigRange -> Fill -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> Double -> Double -> Int -> Int -> Int -> DevicePtr Double -> DevicePtr Double -> Int -> DevicePtr Int32 -> IO ()
dsygvdx _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dsygvdx' requires at least cuda-10.0"

ssygvdx_bufferSize :: Handle -> EigType -> EigMode -> EigRange -> Fill -> Int -> DevicePtr Float -> Int -> DevicePtr Float -> Int -> Float -> Float -> Int -> Int -> Int -> DevicePtr Float -> Int -> IO ()
ssygvdx_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'ssygvdx_bufferSize' requires at least cuda-10.0"

dsygvdx_bufferSize :: Handle -> EigType -> EigMode -> EigRange -> Fill -> Int -> DevicePtr Double -> Int -> DevicePtr Double -> Int -> Double -> Double -> Int -> Int -> Int -> DevicePtr Double -> Int -> IO ()
dsygvdx_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'dsygvdx_bufferSize' requires at least cuda-10.0"

chegvdx :: Handle -> EigType -> EigMode -> EigRange -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> Float -> Float -> Int -> Int -> Int -> DevicePtr Float -> DevicePtr (Complex Float) -> Int -> DevicePtr Int32 -> IO ()
chegvdx _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'chegvdx' requires at least cuda-10.0"

zhegvdx :: Handle -> EigType -> EigMode -> EigRange -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> Double -> Double -> Int -> Int -> Int -> DevicePtr Double -> DevicePtr (Complex Double) -> Int -> DevicePtr Int32 -> IO ()
zhegvdx _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zhegvdx' requires at least cuda-10.0"

chegvdx_bufferSize :: Handle -> EigType -> EigMode -> EigRange -> Fill -> Int -> DevicePtr (Complex Float) -> Int -> DevicePtr (Complex Float) -> Int -> Float -> Float -> Int -> Int -> Int -> DevicePtr Float -> Int -> IO ()
chegvdx_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'chegvdx_bufferSize' requires at least cuda-10.0"

zhegvdx_bufferSize :: Handle -> EigType -> EigMode -> EigRange -> Fill -> Int -> DevicePtr (Complex Double) -> Int -> DevicePtr (Complex Double) -> Int -> Double -> Double -> Int -> Int -> Int -> DevicePtr Double -> Int -> IO ()
zhegvdx_bufferSize _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = cusolverError "'zhegvdx_bufferSize' requires at least cuda-10.0"
#endif
