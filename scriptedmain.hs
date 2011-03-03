#!/usr/bin/env runhaskell

import System (getProgName, getArgs)
import Control.Monad (mapM_)

main :: IO ()
main = do
	program <- getProgName
	args <- getArgs

	putStrLn $ "Number of Args: " ++ (show . length) args
	putStrLn $ "Program: " ++ program
	mapM_ (\x -> putStrLn $ "Arg: " ++ x) args