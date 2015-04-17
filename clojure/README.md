# modulinos/clojure

A modulino in Clojure

# EXAMPLES

## Dotslashed

```
$ ./modulino.clj
Main: The meaning of life is 42

$ ./test.clj
Test: The meaning of life is 42
```

## Interpreted

```
$ lein exec modulino.clj
Main: The meaning of life is 42

$ lein exec test.clj
Test: The meaning of life is 42
```

## Loaded

```
$ lein repl
user=> (set! *compile-path* ".")
"."
user=> (compile 'modulino)
modulino
user=> (compile 'test)
test
user=> (modulino/-main)
Main: The meaning of life is 42
nil
user=> (test/-main)
Test: The meaning of life is 42
nil
```
