#!/usr/bin/env runhaskell

module ScriptedMain where

meaningOfLife :: Int
meaningOfLife = 42

main :: IO ()
main = putStrLn $ "Main: The meaning of life is " ++ show meaningOfLife
