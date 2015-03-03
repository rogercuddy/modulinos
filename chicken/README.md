# scriptedmain/chicken

A modulino in Chicken

# EXAMPLES

## Dotslashed

```
$ ./scriptedmain.scm
Main: The meaning of life is 42

$ ./test.scm
Test: The meaning of life is 42
```

## Interpreted

```
$ csi -ss scriptedmain.scm
Main: The meaning of life is 42

$ csi -ss test.scm
Test: The meaning of life is 42
```

## Compiled

```
$ make
mkdir -p bin/
csc -O2 -o bin/scriptedmain scriptedmain.scm
csc -dynamic -O2 scriptedmain.scm
mkdir -p bin/
csc -O2 -o bin/test test.scm
bin/scriptedmain
Main: The meaning of life is 42
bin/test
Test: The meaning of life is 42
```

## Loaded

```
$ csi
#;1> (load "scriptedmain")
; loading scriptedmain.so ...
#;2> (main '())
Main: The meaning of life is 42
#;3> (load "test")
; loading test.scm ...
#;4> (main '())
; loading scriptedmain.so ...
Test: The meaning of life is 42
```
