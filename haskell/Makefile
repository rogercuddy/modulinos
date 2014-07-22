FLAGS=-O2 -Wall -fwarn-tabs --make -fforce-recomp

all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: ScriptedMain.hs
	ghc $(FLAGS) -o scriptedmain -main-is ScriptedMain ScriptedMain.hs

test: Test.hs
	ghc $(FLAGS) -o test -main-is Test Test.hs

hlint:
	hlint .

lint: hlint

clean:
	-rm test
	-rm scriptedmain
	-rm *.exe
	-rm *.o
	-rm *.hi
