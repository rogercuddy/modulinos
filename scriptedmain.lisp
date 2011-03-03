#!/bin/bash
#|
exec clisp -q -q $0 $0 ${1+"$@"}
exit
|#

;;; Usage: ./scriptedmain.lisp

(defun main (args)
 (format t "Number of Args: ~a~%" (length args))

 (format t "Program: ~a~%" (car args))

 (loop for arg in (cdr args) do
  (format t "Arg: ~a~%" arg))
 (quit))

;;; With help from Francois-Rene Rideau
;;; http://tinyurl.com/cli-args
(let ((args
       #+clisp ext:*args*
       #+sbcl sb-ext:*posix-argv*
       #+clozure (ccl::command-line-arguments)
       #+gcl si:*command-args*
       #+ecl (loop for i from 0 below (si:argc) collect (si:argv i))
       #+cmu extensions:*command-line-strings*
       #+allegro (sys:command-line-arguments)
       #+lispworks sys:*line-arguments-list*
     ))

  (if (member (pathname-name *load-truename*)
              args
              :test #'(lambda (x y) (search x y :test #'equalp)))
    (main args)))