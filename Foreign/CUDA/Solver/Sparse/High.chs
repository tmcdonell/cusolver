--
-- This module is auto-generated. Do not edit directly.
--

{-# LANGUAGE CPP #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
-- |
-- Module      : Foreign.CUDA.Solver.Sparse.High
-- Copyright   : [2017] Trevor L. McDonell
-- License     : BSD3
--
-- Maintainer  : Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- For more information see the cuSolver function reference:
--
-- <http://docs.nvidia.com/cuda/cusolver/index.html#cusolver-high-level-function-reference>
--

module Foreign.CUDA.Solver.Sparse.High (

  Handle,
  MatrixDescriptor,
  scsrlsvqr,
  dcsrlsvqr,
  ccsrlsvqr,
  zcsrlsvqr,
  scsrlsvchol,
  dcsrlsvchol,
  ccsrlsvchol,
  zcsrlsvchol,
  scsreigvsi,
  dcsreigvsi,
  ccsreigvsi,
  zcsreigvsi,

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


{-# INLINEABLE scsrlsvqr #-}
{# fun unsafe cusolverSpScsrlsvqr as scsrlsvqr { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Float', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useDevP `DevicePtr Float', CFloat `Float', `Int', useDevP `DevicePtr Float', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dcsrlsvqr #-}
{# fun unsafe cusolverSpDcsrlsvqr as dcsrlsvqr { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Double', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useDevP `DevicePtr Double', CDouble `Double', `Int', useDevP `DevicePtr Double', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE ccsrlsvqr #-}
{# fun unsafe cusolverSpCcsrlsvqr as ccsrlsvqr { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useDevP `DevicePtr (Complex Float)', CFloat `Float', `Int', useDevP `DevicePtr (Complex Float)', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zcsrlsvqr #-}
{# fun unsafe cusolverSpZcsrlsvqr as zcsrlsvqr { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useDevP `DevicePtr (Complex Double)', CDouble `Double', `Int', useDevP `DevicePtr (Complex Double)', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE scsrlsvchol #-}
{# fun unsafe cusolverSpScsrlsvchol as scsrlsvchol { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Float', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useDevP `DevicePtr Float', CFloat `Float', `Int', useDevP `DevicePtr Float', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE dcsrlsvchol #-}
{# fun unsafe cusolverSpDcsrlsvchol as dcsrlsvchol { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Double', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useDevP `DevicePtr Double', CDouble `Double', `Int', useDevP `DevicePtr Double', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE ccsrlsvchol #-}
{# fun unsafe cusolverSpCcsrlsvchol as ccsrlsvchol { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useDevP `DevicePtr (Complex Float)', CFloat `Float', `Int', useDevP `DevicePtr (Complex Float)', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE zcsrlsvchol #-}
{# fun unsafe cusolverSpZcsrlsvchol as zcsrlsvchol { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', useDevP `DevicePtr (Complex Double)', CDouble `Double', `Int', useDevP `DevicePtr (Complex Double)', alloca- `Int' peekIntConv* } -> `()' checkStatus*- #}

{-# INLINEABLE scsreigvsi #-}
{# fun unsafe cusolverSpScsreigvsi as scsreigvsi { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Float', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', CFloat `Float', useDevP `DevicePtr Float', `Int', CFloat `Float', useDevP `DevicePtr Float', useDevP `DevicePtr Float' } -> `()' checkStatus*- #}

{-# INLINEABLE dcsreigvsi #-}
{# fun unsafe cusolverSpDcsreigvsi as dcsreigvsi { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr Double', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', CDouble `Double', useDevP `DevicePtr Double', `Int', CDouble `Double', useDevP `DevicePtr Double', useDevP `DevicePtr Double' } -> `()' checkStatus*- #}

{-# INLINEABLE ccsreigvsi #-}
{# fun unsafe cusolverSpCcsreigvsi as ccsreigvsi { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', withComplex* `(Complex Float)', useDevP `DevicePtr (Complex Float)', `Int', CFloat `Float', useDevP `DevicePtr (Complex Float)', useDevP `DevicePtr (Complex Float)' } -> `()' checkStatus*- #}

{-# INLINEABLE zcsreigvsi #-}
{# fun unsafe cusolverSpZcsreigvsi as zcsreigvsi { useHandle `Handle', `Int', `Int', useMatDescr `MatrixDescriptor', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr Int32', useDevP `DevicePtr Int32', withComplex* `(Complex Double)', useDevP `DevicePtr (Complex Double)', `Int', CDouble `Double', useDevP `DevicePtr (Complex Double)', useDevP `DevicePtr (Complex Double)' } -> `()' checkStatus*- #}
