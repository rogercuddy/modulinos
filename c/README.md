# DEPRECATED

See https://github.com/mcandre/modulinos/tree/master/go

Robust C code requires vigilance, whereas Go automatically solves most of these issues on behalf of the programmer.

# modulinos/c

A modulino in C

# EXAMPLE

```
$ cmake . && make

$ bin/modulino
Main: The meaning of life is 42

$ bin/modulino-use-test
Test: The meaning of life is 42
```

# REQUIREMENTS

## Compiler Collection

* [clang](http://clang.llvm.org/)

E.g. from Xcode

* [gcc](https://gcc.gnu.org/)

E.g. from Apt, Dnf, Homebrew, MinGW, Strawberry Perl

## CMake

* [cmake](https://cmake.org/)

E.g. `brew install cmake`
