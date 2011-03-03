#!/usr/bin/env sh

main() {
	echo "Directory: " `pwd`

	echo "Program: $0"

	echo "Number of Args: $#"

	for arg in $*; do
		echo "Arg: $arg"
	done
}

# From Dennis Williamson
# http://stackoverflow.com/questions/2683279/#2687092

if [[ $_ == $0 ]]; then
	main
fi