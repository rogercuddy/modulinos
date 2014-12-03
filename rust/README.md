# scriptedmain/rust/

Rust code snippets for writing modulinos.

# EXAMPLE

```
$ make
mkdir -p bin/
rustc -o bin/scriptedmain scriptedmain.rs -O -W missing-doc -W non-uppercase-statics -W unnecessary-qualification -W unnecessary-typecast -W unused-result
rustc --crate-type=lib scriptedmain.rs -O -W missing-doc -W non-uppercase-statics -W unnecessary-qualification -W unnecessary-typecast -W unused-result
rustc -o bin/test test.rs -L . -O -W missing-doc -W non-uppercase-statics -W unnecessary-qualification -W unnecessary-typecast -W unused-result
bin/scriptedmain
Main: The meaning of life is 42
bin/test
Test: The meaning of life is 42
```

# REQUIREMENTS

* [rust](http://www.rust-lang.org/) 0.12

Example: `brew install rust`
