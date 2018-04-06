module Main where

import qualified Modulino

main :: IO ()
main = putStrLn $ "Test: The meaning of life is " ++ show Modulino.meaningOfLife
