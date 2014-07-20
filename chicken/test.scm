#!/usr/bin/env csi -ss

(define (main args)
	(load "scriptedmain.scm")
	(display (format "Test: The meaning of life is ~a\n" (meaning-of-life)))
	(exit))
