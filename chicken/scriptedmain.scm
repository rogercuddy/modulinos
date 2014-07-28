#!/usr/bin/env csi -ss

(require-extension srfi-13) ; strings
(require-extension srfi-1) ; lists

(define (main args)
  (display (format "Main: The meaning of life is ~a\n" (meaning-of-life))))

(define (program)
  (if (string=? (car (argv)) "csi")
      (let ((s-index (list-index (lambda (x) (string-contains x "-s")) (argv))))
        (if (number? s-index)
            (cons 'interpreted (list-ref (argv) (+ 1 s-index)))
            (cons 'unknown "")))
      (cons 'compiled (car (argv)))))

(if (equal? (car (program)) 'compiled)
    (main (cdr (argv))))

(define (meaning-of-life) 42)
