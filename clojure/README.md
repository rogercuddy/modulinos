# scriptedmain/clojure

A modulino in Clojure

# EXAMPLES

## Dotslashed

```
$ ./scriptedmain.clj
Main: The meaning of life is 42

$ ./test.clj
Test: The meaning of life is 42
```

## Interpreted

```
$ lein exec scriptedmain.clj
Main: The meaning of life is 42

$ lein exec test.clj
Test: The meaning of life is 42
```

## Loaded

```
$ lein repl
user=> (set! *compile-path* ".")
"."
user=> (compile 'scriptedmain)
scriptedmain
user=> (compile 'test)
test
user=> (scriptedmain/-main)
Main: The meaning of life is 42
nil
user=> (test/-main)
Test: The meaning of life is 42
nil
```
