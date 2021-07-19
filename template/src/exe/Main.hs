{-# LANGUAGE ScopedTypeVariables #-}

module Main where

import           System.Environment             ( getArgs )
import           Template                       ( fib )

main :: IO ()
main = do
  -- https://lotz84.github.io/haskellbyexample/ex/command-line-arguments
  args <- getArgs
  let arg = head args

  -- https://stackoverflow.com/a/20667721
  print (fib (read arg :: Int))
