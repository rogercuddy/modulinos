#!/usr/bin/env sh

if [[ "$0" == *scriptedmain* ]]; then
	echo "Number of Args: $#"

	echo "Program: $0"

	for arg in $*; do
		echo "Arg: $arg"
	done
fi