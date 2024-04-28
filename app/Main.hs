module Main where

sayHello :: (Integral a) => a -> String
sayHello 7 = "7"
sayHello _ = "Not supported, yet"

add_vector :: (Num a) => (Show a) => (a, a) -> (a, a) -> (a, a)
add_vector (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

print_head :: (Show a) => [a] -> IO ()
print_head [] = putStrLn "Empty list"
print_head (x:_) = putStrLn (show x)

main :: IO ()
main = do
  putStrLn (show (add_vector (1, 2) (3, 4)))
  print_head [1, 3]

