#!/usr/bin/env octave -qf

function y = meaning_of_life()
	y = 42;
endfunction

function main()
	printf("Main: The meaning of life is %d\n", meaning_of_life());
endfunction

main();