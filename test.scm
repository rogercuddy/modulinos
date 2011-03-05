#!/bin/bash
#|
exec csi -ss $0 ${1+"$@"}
exit
|#
(load "scriptedmain.scm")
(exit)