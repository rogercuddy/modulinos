#!/usr/bin/env sh

if [[ "$0" == *scriptedmain* ]]; then
	echo "Directory: " `pwd`

	echo "Program: $0"

	echo "Number of Args: $#"

	for arg in $*; do
		echo "Arg: $arg"
	done
fi