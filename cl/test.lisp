#!/usr/bin/env sh
#|
exec clisp -q -q $0 $0 ${1+"$@"}
|#

(load "modulino.lisp")
(format t "Test: The meaning of life is ~a~%" (meaning-of-life))
