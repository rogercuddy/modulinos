# scriptedmain/haskell

A modulino in Haskell

# EXAMPLES

## Dotslashed

```
$ ./ScriptedMain.hs
Main: The meaning of life is 42

$ ./Test.hs
Test: The meaning of life is 42
```

## Interpreted

```
$ runhaskell ScriptedMain.hs
Main: The meaning of life is 42

$ runhaskell Test.hs
Test: The meaning of life is 42
```

## Compiled

```
$ make
ghc -O2 -Wall -fwarn-tabs --make -fforce-recomp -o scriptedmain -main-is ScriptedMain ScriptedMain.hs
[1 of 1] Compiling ScriptedMain     ( ScriptedMain.hs, ScriptedMain.o )
Linking scriptedmain ...
ghc -O2 -Wall -fwarn-tabs --make -fforce-recomp -o test -main-is Test Test.hs
[1 of 2] Compiling ScriptedMain     ( ScriptedMain.hs, ScriptedMain.o )
[2 of 2] Compiling Test             ( Test.hs, Test.o )
Linking test ...
./scriptedmain
Main: The meaning of life is 42
./test
Test: The meaning of life is 42
```

## Loaded

```
$ ghci
Prelude> :load ScriptedMain.hs
[1 of 1] Compiling ScriptedMain     ( ScriptedMain.hs, interpreted )
Ok, modules loaded: ScriptedMain.
*ScriptedMain> :load Test.hs
[1 of 2] Compiling ScriptedMain     ( ScriptedMain.hs, interpreted )
[2 of 2] Compiling Test             ( Test.hs, interpreted )
Ok, modules loaded: ScriptedMain, Test.
*Test> ScriptedMain.main
Main: The meaning of life is 42
*Test> Test.main
Test: The meaning of life is 42
```
