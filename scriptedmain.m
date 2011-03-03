#!/usr/bin/env octave -qf

function scriptedmain()
endfunction

function main()
	printf("Directory: %s\n", pwd());
	printf("Program: %s\n", program_name());
	printf("Number of Args: %d\n", nargin);

	args = argv();

	for i = 1:nargin
		printf("Arg: %s\n", args{i});
	endfor

endfunction

main();