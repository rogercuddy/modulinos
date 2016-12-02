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

* a [C compiler](https://en.wikipedia.org/wiki/List_of_compilers#C_compilers)
* [cmake](https://cmake.org)

## Optional

* [cppcheck](http://cppcheck.sourceforge.net)
* [splint](http://www.splint.org)
* [vera++](https://bitbucket.org/verateam/vera/wiki/Home)
* [valgrind](http://valgrind.org)
