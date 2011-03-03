#!/usr/bin/env newlisp

(context 'SCRIPTED-MAIN)

(define (main)
	(println "Number of Args: " (length (main-args)))

	(println "Program: " (main-args 1))

	(map (lambda (x) (println "Arg: " x)) (main-args))

	(exit))

(if (find "scriptedmain" (main-args 1)) (main))

(context MAIN)