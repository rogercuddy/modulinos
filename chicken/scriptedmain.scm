":"; exec csi -ss $0 ${1+"$@"}

(define (meaning-of-life) 42)

(define (main args)
  (display (format "Main: The meaning of life is ~a\n" (meaning-of-life))))

(cond-expand
 (chicken-compile-shared)
 (compiling (main (command-line-arguments)))
 (else))
