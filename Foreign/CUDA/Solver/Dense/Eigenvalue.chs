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
  sgesvd_bufferSize,
  dgesvd_bufferSize,
  cgesvd_bufferSize,
  zgesvd_bufferSize,
  sgesvd,
  dgesvd,
  cgesvd,
  zgesvd,
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
