#!/usr/bin/env rdmd -version=scriptedmain

// Interpret:
// ./scriptedmain.d
//
// Compile:
// dmd scriptedmain.d -version=scriptedmain
//
// Run:
// ./scriptedmain

module scriptedmain;

import std.stdio;

int meaningOfLife() {
	return 42;
}

version (scriptedmain) {
	void main(string[] args) {
		writeln("Main: The meaning of life is ", meaningOfLife());
	}
}