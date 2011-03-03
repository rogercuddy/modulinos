#!/usr/bin/env newlisp

(context 'SCRIPTED-MAIN)

(define (main)
	(println "Directory: " (real-path))

	(println "Program: " (main-args 1))

	(println "Number of Args: " (length (main-args)))

	(map (lambda (x) (println "Arg: " x)) (main-args))

	(exit))

(if (find "scriptedmain" (main-args 1)) (main))

(context MAIN)