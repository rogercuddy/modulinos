#!/bin/bash
#|
exec clisp -q -q $0 $0 ${1+"$@"}
exit
|#

;;; Usage: ./scriptedmain.lisp

;;; With help from Rainer Joswig
;;; http://www.math.utexas.edu/pipermail/maxima/2007/006523.html

(defun main (args)
 (format t "Directory: ~a~%"
  #+clisp (ext:cd)
  #+lucid (working-directory)
  #+allegro (excl:current-directory)
  #+sbcl (progn *default-pathname-defaults*)
  #+(or :cmucl :scl) (ext:default-directory)
  #+lispworks (hcl:get-working-directory)
 )

 (format t "Program: ~a~%" (car args))

 (format t "Number of Args: ~a~%" (length args))

 (loop for arg in args do
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