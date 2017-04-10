# modulinos/rust/

Rust code snippets for writing modulinos.

# EXAMPLE

```
$ make
mkdir -p bin
rustc -o bin/modulino modulino.rs -O
rustc --crate-type=lib modulino.rs -O
rustc -o bin/test test.rs -L . -O
bin/modulino
Main: The meaning of life is 42
bin/test
Test: The meaning of life is 42
```

# REQUIREMENTS

* [rust](http://www.rust-lang.org/) 1.16.0+
