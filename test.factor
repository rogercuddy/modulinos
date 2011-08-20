#! /usr/bin/env factor

INCLUDE: "scriptedmain"
USING: io scriptedmain math.parser ;
IN: test

: main ( -- ) meaning-of-life "Test: The meaning of life is " write number>string print ;

MAIN: main