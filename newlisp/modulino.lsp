#!/usr/bin/env newlisp

(context 'MODULINO)

(define (MODULINO:meaning-of-life) 42)

(define (main)
 (println (format "Main: The meaning of life is %d" (meaning-of-life)))
 (exit))

(if (find "modulino" (main-args 1)) (main))

(context MAIN)
