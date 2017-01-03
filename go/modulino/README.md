# ABOUT

Go does not support direct modulinos (packages that double as both shared libraries and executables). However, it is relatively easy to work around this by moving the reusable code to a custom-named package, and specifying executable code in `main` packages.

# EXAMPLE

```
$ modulino
Main: The meaning of life is 42
$ modulino-test
Test: The meaning of life is 42
```

# DOCUMENTATION

https://godoc.org/github.com/mcandre/modulinos/go/modulino

# REQUIREMENTS

* [Go](https://golang.org) 1.7+ with [$GOPATH configured](https://gist.github.com/mcandre/ef73fb77a825bd153b7836ddbd9a6ddc)

## Optional

* [Git](https://git-scm.com)
* [Make](https://www.gnu.org/software/make/)
* [Bash](https://www.gnu.org/software/bash/)
* [goimports](https://godoc.org/golang.org/x/tools/cmd/goimports) (e.g. `go get golang.org/x/tools/cmd/goimports`)
* [golint](https://github.com/golang/lint) (e.g. `go get github.com/golang/lint/golint`)
* [errcheck](https://github.com/kisielk/errcheck) (e.g. `go get github.com/kisielk/errcheck`)

# INSTALL FROM REMOTE GIT REPOSITORY

```
$ go get github.com/mcandre/modulinos/go/modulino/...
```

(Yes, include the ellipsis as well, it's the magic Go syntax for downloading, building, and installing all components of a package, including any libraries and command line tools.)

# INSTALL FROM LOCAL GIT REPOSITORY

```
$ mkdir -p $GOPATH/src/github.com/mcandre
$ git clone git@github.com:mcandre/modulinos.git $GOPATH/src/github.com/mcandre/modulinos
$ sh -c "cd $GOPATH/src/github.com/mcandre/modulinos/go/modulino/cmd/modulino && go install"
$ sh -c "cd $GOPATH/src/github.com/mcandre/modulinos/go/modulino/cmd/modulino-test && go install"
```

# LINT

Keep the code tidy:

```
$ make lint
```
