# modulinos - programs that only run main() if they're not loaded as libraries by other programs.

# EXAMPLE

```console
$ cd python
$ python modulino.py
Main: The meaning of life is 42
$ python test.py
Test: The meaning of life is 42
```

# Rosetta Code

http://rosettacode.org/wiki/Modulinos

http://rosettacode.org/wiki/Multiline_shebang

# REQUIREMENTS

## Optional

* [make](https://www.gnu.org/software/make/)
* [GNU findutils](https://www.gnu.org/software/findutils/)
* [stank](https://github.com/mcandre/stank) (e.g. `go get github.com/mcandre/stank/...`)
* [Python](https://www.python.org) 3+ (for yamllint)
* [Node.js](https://nodejs.org/en/) (for eclint)
