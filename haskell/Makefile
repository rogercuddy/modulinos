all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: scriptedmain.hs
	ghc -fforce-recomp -o scriptedmain -main-is ScriptedMain scriptedmain.hs -Wall

test: test.hs
	ghc -fforce-recomp -o test -main-is Test test.hs scriptedmain.hs -Wall

clean:
	-rm *.exe
	-rm *.o
	-rm *.hi
	-rm scriptedmain
	-rm test
