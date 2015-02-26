# scriptedmain/c

A modulino in C

# EXAMPLE

```
$ make
mkdir -p bin/
clang -O2 -Wall -Wextra -Wmost -Weverything -o bin/scriptedmain -DSCRIPTEDMAIN scriptedmain.c
mkdir -p bin/
clang -O2 -Wall -Wextra -Wmost -Weverything -o bin/test test.c scriptedmain.c
bin/scriptedmain
Main: The meaning of life is 42
bin/test
Test: The meaning of life is 42
```