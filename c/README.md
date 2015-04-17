# modulinos/c

A modulino in C

# EXAMPLE

```
$ make
mkdir -p bin/
clang -O2 -Wall -Wextra -Wmost -Weverything -o bin/modulino -DMODULINO modulino.c
mkdir -p bin/
clang -O2 -Wall -Wextra -Wmost -Weverything -o bin/test test.c modulino.c
bin/modulino
Main: The meaning of life is 42
bin/test
Test: The meaning of life is 42
```
