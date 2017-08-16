-- |
-- Module      : Foreign.CUDA.Solver.Internal.C2HS
-- Copyright   : [2017] Trevor L. McDonell
-- License     : BSD3
--
-- Maintainer  : Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--

module Foreign.CUDA.Solver.Internal.C2HS (

  -- * Conversion between C and Haskell types
  cIntConv, cFloatConv, cToBool, cFromBool, cToEnum, cFromEnum,

  -- * Composite marshalling functions
  withComplex,
  peekIntConv, peekFloatConv,

) where

-- system
import Control.Monad
import Data.Complex
import Foreign
import Foreign.C
import Foreign.Storable.Complex ()


-- Conversions -----------------------------------------------------------------
--

-- | Integral conversion
--
{-# INLINE cIntConv #-}
cIntConv :: (Integral a, Integral b) => a -> b
cIntConv  = fromIntegral

-- | Floating conversion
--
{-# INLINE [1] cFloatConv #-}
cFloatConv :: (RealFloat a, RealFloat b) => a -> b
cFloatConv  = realToFrac
-- As this conversion by default goes via `Rational', it can be very slow...
{-# RULES
  "cFloatConv/Float->Float"    forall (x::Float).  cFloatConv x = x;
  "cFloatConv/Double->Double"  forall (x::Double). cFloatConv x = x;
  "cFloatConv/Float->CFloat"   forall (x::Float).  cFloatConv x = CFloat x;
  "cFloatConv/CFloat->Float"   forall (x::Float).  cFloatConv CFloat x = x;
  "cFloatConv/Double->CDouble" forall (x::Double). cFloatConv x = CDouble x;
  "cFloatConv/CDouble->Double" forall (x::Double). cFloatConv CDouble x = x
 #-}

-- | Obtain C value from Haskell 'Bool'.
--
{-# INLINE cFromBool #-}
cFromBool :: Num a => Bool -> a
cFromBool  = fromBool

-- | Obtain Haskell 'Bool' from C value.
--
{-# INLINE cToBool #-}
cToBool :: (Eq a, Num a) => a -> Bool
cToBool  = toBool

-- | Convert a C enumeration to Haskell.
--
{-# INLINE cToEnum #-}
cToEnum :: (Integral i, Enum e) => i -> e
cToEnum  = toEnum . cIntConv

-- | Convert a Haskell enumeration to C.
--
{-# INLINE cFromEnum #-}
cFromEnum :: (Enum e, Integral i) => e -> i
cFromEnum  = cIntConv . fromEnum

-- | Marshalling of complex numbers
--
{-# INLINE withComplex #-}
withComplex :: Storable a => Complex a -> (Ptr () -> IO b) -> IO b
withComplex c f = with c (f . castPtr)

-- | Marshalling of numerals
--
{-# INLINE peekIntConv #-}
peekIntConv :: (Storable a, Integral a, Integral b) => Ptr a -> IO b
peekIntConv = liftM cIntConv . peek

{-# INLINE peekFloatConv #-}
peekFloatConv :: (Storable a, RealFloat a, RealFloat b) => Ptr a -> IO b
peekFloatConv = liftM cFloatConv . peek

