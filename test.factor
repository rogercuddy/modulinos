#! /usr/bin/env factor

<<
USING: io.pathnames namespaces source-files vocabs.loader ; 
! add the script file's parent directory to the search path
file get parent-directory add-vocab-root
>>

USING: scriptedmain ;
IN: test

: main ( -- ) meaning-of-life "Test: The meaning of life is " write number>string print ;

MAIN: main