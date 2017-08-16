--
-- This module is auto-generated. Do not edit directly.
--

{-# LANGUAGE CPP #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
-- |
-- Module      : Foreign.CUDA.Solver.Sparse.Low
-- Copyright   : [2017] Trevor L. McDonell
-- License     : BSD3
--
-- Maintainer  : Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>
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
  xcsrqrAnalysisBatched,
  scsrqrBufferInfoBatched,
  dcsrqrBufferInfoBatched,
  ccsrqrBufferInfoBatched,
  zcsrqrBufferInfoBatched,
  scsrqrsvBatched,
  dcsrqrsvBatched,
  ccsrqrsvBatched,
  zcsrqrsvBatched,

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
