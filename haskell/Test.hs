#!/usr/bin/env runhaskell

module Test where

import Modulino hiding (main)

main :: IO ()
main = putStrLn $ "Test: The meaning of life is " ++ show meaningOfLife
