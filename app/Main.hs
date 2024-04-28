-- Following https://learnyouahaskell.com/

{-# OPTIONS_GHC -Wno-type-defaults #-}

module Main where

import Hello
import DataType
import Locker
import Typeclasses


sayHello :: (Integral a) => a -> String
sayHello 7 = "7"
sayHello _ = "Not supported, yet"

addVector :: (Num a) => (Show a) => (a, a) -> (a, a) -> (a, a)
addVector (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

printHead :: (Show a) => [a] -> IO ()
printHead [] = putStrLn "Empty list"
printHead (x : _) = print x

bmiTell ::
  (RealFloat a) =>
  a ->
  String

bmiTell bmi
  | bmi <= underweight = "You're underweight, you emo, you!"
  | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
  | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
  | otherwise = "You're a whale, congratulations!"
  where underweight = 18.5

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
  where
    (f : _) = firstname
    (l : _) = lastname

cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^ 2
  in sideArea + 2 * topArea

max' :: Ord a => a -> a -> a
max' a b
  | a > b = a
  | otherwise = b

accfn :: Num a => a -> a -> a
accfn acc x = acc + x

sum' :: (Num a) => [a] -> a
sum' = foldl accfn 0

main :: IO ()
main = do
  print (numUniques [1, 2, 3, 4])
  print (cylinder 2 3)
  print (initials "John" "Doe")
  print ("s" `max` "se")
  print (addVector (1, 2) (3, 4))
  printHead [1, 3]
  print $ bmiTell 22.0
