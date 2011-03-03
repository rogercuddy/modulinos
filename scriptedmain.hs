#!/usr/bin/env runhaskell

import System (getProgName, getArgs)
import Control.Monad (mapM_)

main :: IO ()
main = do
	program <- getProgName
	args <- getArgs

	putStrLn $ "Program: " ++ show program
	mapM_ (\x -> putStrLn $ "Arg: " ++ show x) args