#!/usr/bin/env runhaskell

-- Compile:
--
-- ghc -fforce-recomp -o test -main-is Test test.hs scriptedmain.hs -Wall

module Test where

import ScriptedMain hiding (main)

main :: IO ()
main = putStrLn $ "Test: The meaning of life is " ++ show meaningOfLife
