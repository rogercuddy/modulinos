all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: scriptedmain.hs
	ghc -O2 -Wall -fforce-recomp -o scriptedmain -main-is ScriptedMain scriptedmain.hs

test: test.hs
	ghc -O2 -Wall -fforce-recomp -o test -main-is Test test.hs scriptedmain.hs

clean:
	-rm *.exe
	-rm *.o
	-rm *.hi
	-rm scriptedmain
	-rm test
