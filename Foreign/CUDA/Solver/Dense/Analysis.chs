{-# LANGUAGE CPP                      #-}
{-# LANGUAGE EmptyDataDecls           #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE TemplateHaskell          #-}
-- |
-- Module      : Foreign.CUDA.Solver.Dense.Analysis
-- Copyright   : [2017] Trevor L. McDonell
-- License     : BSD3
--
-- Maintainer  : Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--

module Foreign.CUDA.Solver.Dense.Analysis (

  Info_gesvdj(..), createInfo_gesvdj, destroyInfo_gesvdj,
  Info_syevj(..), createInfo_syevj, destroyInfo_syevj,

) where

-- friends
import Foreign.CUDA.Solver.Error
import Foreign.CUDA.Solver.Internal.C2HS

-- system
import Foreign
import Foreign.C
import Control.Monad                                      ( liftM )

#include "cbits/stubs.h"
{# context lib="cusolver" #}


#if CUDA_VERSION >= 9000
newtype Info_gesvdj = Info_gesvdj { useInfo_gesvdj :: {# type gesvdjInfo_t #}}

{-# INLINEABLE createInfo_gesvdj #-}
{# fun unsafe cusolverDnCreateGesvdjInfo as createInfo_gesvdj
  { alloca- `Info_gesvdj' peekI* } -> `()' checkStatus*- #}
  where
    peekI = liftM Info_gesvdj . peek

{-# INLINEABLE destroyInfo_gesvdj #-}
{# fun unsafe cusolverDnDestroyGesvdjInfo as destroyInfo_gesvdj
  { useInfo_gesvdj `Info_gesvdj' } -> `()' checkStatus* #}

#else
data Info_gesvdj

createInfo_gesvdj :: IO Info_gesvdj
createInfo_gesvdj = requireSDK 'createInfo_gesvdj 9.0

destroyInfo_gesvdj :: Info_gesvdj -> IO ()
destroyInfo_gesvdj _ = requireSDK 'destroyInfo_gesvdj 9.0
#endif

#if CUDA_VERSION >= 9000
newtype Info_syevj = Info_syevj { useInfo_syevj :: {# type syevjInfo_t #}}

{-# INLINEABLE createInfo_syevj #-}
{# fun unsafe cusolverDnCreateSyevjInfo as createInfo_syevj
  { alloca- `Info_syevj' peekI* } -> `()' checkStatus*- #}
  where
    peekI = liftM Info_syevj . peek

{-# INLINEABLE destroyInfo_syevj #-}
{# fun unsafe cusolverDnDestroySyevjInfo as destroyInfo_syevj
  { useInfo_syevj `Info_syevj' } -> `()' checkStatus* #}

#else
data Info_syevj

createInfo_syevj :: IO Info_syevj
createInfo_syevj = requireSDK 'createInfo_syevj 9.0

destroyInfo_syevj :: Info_syevj -> IO ()
destroyInfo_syevj _ = requireSDK 'destroyInfo_syevj 9.0
#endif

