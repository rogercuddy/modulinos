# modulinos/chicken

A modulino in Chicken Scheme

# EXAMPLES

## Dotslashed

```
$ ./modulino.scm
Main: The meaning of life is 42

$ ./test.scm
Test: The meaning of life is 42
```

## Interpreted

```
$ csi -ss modulino.scm
Main: The meaning of life is 42

$ csi -ss test.scm
Test: The meaning of life is 42
```

## Compiled

```
$ make
mkdir -p bin/
csc -O2 -o bin/modulino modulino.scm
csc -dynamic -O2 modulino.scm
mkdir -p bin/
csc -O2 -o bin/test test.scm
bin/modulino
Main: The meaning of life is 42
bin/test
Test: The meaning of life is 42
```

## Loaded

```
$ csi
#;1> (load "modulino")
; loading modulino.so ...
#;2> (main '())
Main: The meaning of life is 42
#;3> (load "test")
; loading test.scm ...
#;4> (main '())
; loading modulino.so ...
Test: The meaning of life is 42
```
