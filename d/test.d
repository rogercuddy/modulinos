#!/usr/bin/env rdmd -version=test

// Interpret:
// ./test.d
//
// Compile:
// dmd test.d scriptedmain.d -version=test
//
// Run:
// ./test

import scriptedmain;
import std.stdio;

version (test) {
	void main(const string[] args) {
		writeln("Test: The meaning of life is ", meaningOfLife());
	}
}
