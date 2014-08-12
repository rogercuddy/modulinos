":"; exec csi -ss $0

(declare (uses chicken-syntax))

(use srfi-1) ; lists
(use srfi-13) ; strings
(use regex)

(define (main args)
	(load "scriptedmain")
  (display (format "Test: The meaning of life is ~a\n" (meaning-of-life))))

(define (program)
  (if (string=? (car (argv)) "csi")
      (let ((s-index (list-index (lambda (x) (string-contains x "-s")) (argv))))
        (if (number? s-index)
            (cons 'interpreted (list-ref (argv) (+ 1 s-index)))
            (cons 'unknown "")))
      (cons 'compiled (car (argv)))))

(let ((prog (program)))
	(if (and
			 (equal? (car prog) 'compiled)
			 (string-match ".*test.*" (cdr prog)))
			(main (cdr (argv)))))
