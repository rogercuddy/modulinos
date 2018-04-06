# modulinos/haskell

A modulino in Haskell

# EXAMPLE

```console
$ modulino-test
Test: The meaning of life is 42
```

# RUNTIME REQUIREMENTS

(None)

# BUILDTIME REQUIREMENTS

* [GHC Haskell](http://www.haskell.org/) 8+

## Recommended

* [shake](https://shakebuild.com/) (e.g., `cabal install shake`)
* [hlint](https://hackage.haskell.org/package/hlint) (e.g., `cabal install happy; cabal install hlint`)

# BUILD

```console
$ cabal install --only-dependencies --enable-documentation
$ cabal install --only-dependencies --enable-tests
$ shake
```

# LINT

```console
$ shake lint
```

# TEST

```console
$ shake test
```

# PUBLISH

```console
$ shake publish
```
