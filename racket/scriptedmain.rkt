#!/usr/bin/env racket
#lang racket

(provide meaning-of-life)

(define (meaning-of-life) 42)

(module+ main (printf "Main: The meaning of life is ~s\n" (meaning-of-life)))