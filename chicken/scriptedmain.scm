":"; exec csi -ss $0 ${1+"$@"}

(declare (uses chicken-syntax))
(use srfi-1) ; lists
(use srfi-13) ; strings
(use regex)

(define (meaning-of-life) 42)

(define (main args)
  (display (format "Main: The meaning of life is ~a\n" (meaning-of-life))))

(define (program)
  (if (string=? (car (argv)) "csi")
      (let ((s-index (list-index (lambda (x) (string-contains x "-s")) (argv))))
        (if (number? s-index)
            (cons 'interpreted (list-ref (argv) (+ 1 s-index)))
            (cons 'unknown "")))
      (cons 'compiled (car (argv)))))

(cond-expand
 (chicken-compile-shared)
 (compiling (main (command-line-arguments)))
 (else))
