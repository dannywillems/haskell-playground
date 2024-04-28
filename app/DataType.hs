module DataType where

data List a = Nil | Cons a (List a)

data Tree a = E | L a (Tree a) (Tree a)

printTree :: (Show a) => Tree a -> IO ()
printTree E = putStrLn "Empty tree"
printTree (L v l r) = do
  print v
  printTree l
  printTree r

data Record1 = Record1
  { name :: String,
    age :: Int
  }
