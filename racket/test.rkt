#!/usr/bin/env racket
#lang racket

(module+ main
	(require "scriptedmain.rkt")
	(printf "Test: The meaning of life is ~s\n" (meaning-of-life)))