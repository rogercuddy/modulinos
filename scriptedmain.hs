#!/usr/bin/env runhaskell

-- Haskell has scripted main, but not for compiled scripts.
-- This is because the primary script must be a module Main,
-- creating a name conflict.

module ScriptedMain where

import System.Directory (getCurrentDirectory)
import System (getProgName, getArgs)
import Control.Monad (mapM_)

main :: IO ()
main = do
	directory <- getCurrentDirectory
	program <- getProgName
	args <- getArgs

	putStrLn $ "Directory: " ++ directory
	putStrLn $ "Program: " ++ program
	putStrLn $ "Number of Args: " ++ (show . length) args
	mapM_ (\x -> putStrLn $ "Arg: " ++ x) args