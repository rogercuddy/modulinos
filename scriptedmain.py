#!/usr/bin/env python

import os, sys

def main():
	print "Directory: " + os.getcwd()

	print "Program: " + sys.argv[0]

	print "Number of Args: %d" % len(sys.argv)

	for arg in sys.argv:
		print "Arg: " + arg

if __name__=="__main__": main()