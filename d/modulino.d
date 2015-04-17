#!/usr/bin/env rdmd -version=modulino

// Interpret:
// ./modulino.d
//
// Compile:
// dmd modulino.d -version=modulino
//
// Run:
// ./modulino

module modulino;

import std.stdio;

int meaningOfLife() {
  return 42;
}

version (modulino) {
  void main(const string[] args) {
    writeln("Main: The meaning of life is ", meaningOfLife());
  }
}
