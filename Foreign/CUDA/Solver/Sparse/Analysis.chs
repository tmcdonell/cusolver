{-# LANGUAGE CPP                      #-}
{-# LANGUAGE EmptyDataDecls           #-}
{-# LANGUAGE ForeignFunctionInterface #-}
-- |
-- Module      : Foreign.CUDA.Solver.Sparse.Analysis
-- Copyright   : [2017] Trevor L. McDonell
-- License     : BSD3
--
-- Maintainer  : Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--

module Foreign.CUDA.Solver.Sparse.Analysis (

  Info_csrqr(..), createInfo_csrqr, destroyInfo_csrqr,

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


newtype Info_csrqr = Info_csrqr { useInfo_csrqr :: {# type csrqrInfo_t #}}

{-# INLINEABLE createInfo_csrqr #-}
{# fun unsafe cusolverSpCreateCsrqrInfo as createInfo_csrqr
  { alloca- `Info_csrqr' peekI* } -> `()' checkStatus*- #}
  where
    peekI = liftM Info_csrqr . peek

{-# INLINEABLE destroyInfo_csrqr #-}
{# fun unsafe cusolverSpDestroyCsrqrInfo as destroyInfo_csrqr
  { useInfo_csrqr `Info_csrqr' } -> `()' checkStatus* #}
