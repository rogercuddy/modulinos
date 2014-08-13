":"; exec csi -ss $0 ${1+"$@"}

(define (main args)
	(load "scriptedmain")
  (display (format "Test: The meaning of life is ~a\n" (meaning-of-life))))

(cond-expand
 (chicken-compile-shared)
 (compiling (main (command-line-arguments)))
 (else))
