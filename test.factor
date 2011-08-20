#! /usr/bin/env factor

RELATIVE
USING: scriptedmain ;
IN: test

: main ( -- ) meaning-of-life "Test: The meaning of life is " write number>string print ;

MAIN: main