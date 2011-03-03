#!/usr/bin/env python

import sys

def main():
	print "Number of Args: %d" % len(sys.argv)

	print "Program: " + sys.argv[0]

	for arg in sys.argv:
		print "Arg: " + arg

if __name__=="__main__": main()