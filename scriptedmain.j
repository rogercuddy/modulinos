#!/usr/bin/env jconsole

load 'regex'

meaningOfLife =: 42

main =: monad : 0
	echo 'Main: The meaning of life is ', > 'd' (8!:0) meaningOfLife
	exit ''
)

shouldrun =: monad : 0
	if. '.*scriptedmain.*' rxeq > 1 { ARGV do.
		main 0
	end.
)

shouldrun 0