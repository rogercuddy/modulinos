#!/usr/bin/env runhaskell

import ScriptedMain hiding (main)

main :: IO ()
main = putStrLn $ "Test: The meaning of life is " ++ show meaningOfLife