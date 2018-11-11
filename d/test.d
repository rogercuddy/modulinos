#!/usr/bin/env rdmd -version=test

// Interpret:
// ./test.d
//
// Compile:
// dmd test.d modulino.d -version=test
//
// Run:
// ./test

import modulino;
import std.stdio;

version (test) {
    void main(const string[] args) {
        writeln("Test: The meaning of life is ", meaningOfLife());
    }
}
