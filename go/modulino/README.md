# ABOUT

Go does not support direct modulinos (packages that double as both shared libraries and executables). However, it is relatively easy to work around this by moving the reusable code to a custom-named package, and specifying executable code in `main` packages.

# EXAMPLE

```
$ modulino
Main: The meaning of life is 42
$ test
Test: The meaning of life is 42
```

# INSTALL

```
$ go get github.com/mcandre/modulinos/go/modulino/...
```

(Yes, include the ellipsis as well, it's the magic Go syntax for downloading, building, and installing all components of a package, including any libraries and command line tools.)
