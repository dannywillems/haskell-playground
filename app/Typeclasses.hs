module Typeclasses where

data TrafficLight = Red | Yellow | Green

class Eq2 m where
  eq2 :: Eq a => m a -> m a -> Bool

class Eq3 a where
  eq3 :: a -> a -> Bool

instance Eq2 Maybe where
  eq2 Nothing Nothing = True
  eq2 (Just x) (Just y) = x == y
  eq2 _ _ = False

instance Eq3 TrafficLight where
  eq3 Red Red = True
  eq3 Green Green = True
  eq3 Yellow Yellow = True
  eq3 _ _ = False

-- Functor typeclass
class Functor2 f where
  -- f is a type constructor that takes one type
  fmap2 :: (a -> b) -> f a -> f b

-- Note that we can see map on list a functor
instance Functor2 [] where
  fmap2 = map
