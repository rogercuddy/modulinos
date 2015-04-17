# modulinos/haskell

A modulino in Haskell

# EXAMPLES

## Dotslashed

```
$ ./Modulino.hs
Main: The meaning of life is 42

$ ./Test.hs
Test: The meaning of life is 42
```

## Interpreted

```
$ runhaskell Modulino.hs
Main: The meaning of life is 42

$ runhaskell Test.hs
Test: The meaning of life is 42
```

## Compiled

```
$ make
ghc -O2 -Wall -fwarn-tabs --make -fforce-recomp -o modulino -main-is Modulino Modulino.hs
[1 of 1] Compiling Modulino     ( Modulino.hs, Modulino.o )
Linking modulino ...
ghc -O2 -Wall -fwarn-tabs --make -fforce-recomp -o test -main-is Test Test.hs
[1 of 2] Compiling Modulino     ( Modulino.hs, Modulino.o )
[2 of 2] Compiling Test             ( Test.hs, Test.o )
Linking test ...
./modulino
Main: The meaning of life is 42
./test
Test: The meaning of life is 42
```

## Loaded

```
$ ghci
Prelude> :load Modulino.hs
[1 of 1] Compiling Modulino     ( Modulino.hs, interpreted )
Ok, modules loaded: Modulino.
*Modulino> :load Test.hs
[1 of 2] Compiling Modulino     ( Modulino.hs, interpreted )
[2 of 2] Compiling Test             ( Test.hs, interpreted )
Ok, modules loaded: Modulino, Test.
*Test> Modulino.main
Main: The meaning of life is 42
*Test> Test.main
Test: The meaning of life is 42
```
