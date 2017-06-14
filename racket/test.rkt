#!/usr/bin/env racket
#lang racket

(module+ main
 (require "modulino.rkt")
 (printf "Test: The meaning of life is ~a\n" (meaning-of-life)))
