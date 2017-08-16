{-# LANGUAGE CPP                      #-}
{-# LANGUAGE EmptyDataDecls           #-}
{-# LANGUAGE ForeignFunctionInterface #-}
-- |
-- Module      : Foreign.CUDA.Solver.Refactorisation.Analysis
-- Copyright   : [2017] Trevor L. McDonell
-- License     : BSD3
--
-- Maintainer  : Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--

module Foreign.CUDA.Solver.Refactorisation.Analysis (

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

