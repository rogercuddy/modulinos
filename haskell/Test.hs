#!/usr/bin/env runhaskell

module Test where

import ScriptedMain hiding (main)

main :: IO ()
main = putStrLn $ "Test: The meaning of life is " ++ show meaningOfLife
