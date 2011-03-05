#!/bin/bash
#|
exec csi -ss $0 ${1+"$@"}
exit
|#

(use posix)
(require-extension srfi-1) ; lists
(require-extension srfi-13) ; strings

(define (main args)
	(display (format "Directory: ~a\n" (current-directory)))

	(display (format "Program: ~a\n" (cdr (program))))

	(display (format "Number of Args: ~a\n" (length args)))

	(map (lambda (x) (display (format "Arg: ~a\n" x))) args)

	(exit))

(define (program)
	(if (string=? (car (argv)) "csi")
		(let ((s-index (list-index (lambda (x) (string-contains x "-s")) (argv))))
			(if (number? s-index)
				(cons 'interpreted (list-ref (argv) (+ 1 s-index)))
				(cons 'unknown "")))
		(cons 'compiled (car (argv)))))

(if (equal? (car (program)) 'compiled)
	(main (cdr (argv))))