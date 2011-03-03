#!/usr/bin/env sh

main() {
	echo "Directory: " `pwd`

	echo "Program: $0"

	echo "Number of Args: $#"

	for arg in $*; do
		echo "Arg: $arg"
	done
}

if [[ $_ == $0 ]]; then
	main
fi