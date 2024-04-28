module Main where

sayHello :: (Integral a) => a -> String
sayHello 7 = "7"
sayHello _ = "Not supported, yet"

main :: IO ()
main = putStrLn (sayHello 7)
