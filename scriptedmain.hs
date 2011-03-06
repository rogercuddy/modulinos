#!/usr/bin/env runhaskell

-- Haskell has scripted main, but not for compiled scripts.
-- This is because the primary script must be a module Main,
-- creating a name conflict.

module ScriptedMain where

meaningOfLife :: Int
meaningOfLife = 42

main :: IO ()
main = putStrLn $ "Main: The meaning of life is " ++ show meaningOfLife