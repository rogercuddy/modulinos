# ABOUT

Go does not support direct modulinos (packages that double as both shared libraries and executables). However, it is relatively easy to work around this by moving the reusable code to a custom-named package, and specifying executable code in `main` packages.

# EXAMPLE

```
$ make
mkdir -p bin
go build -o bin/modulino modulino.go
mkdir -p bin
go build -o bin/test test.go
bin/modulino
Main: The meaning of life is 42
bin/test
Test: The meaning of life is 42
```
