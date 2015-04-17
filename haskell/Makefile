FLAGS=-O2 -Wall -fwarn-tabs --make -fforce-recomp

all: modulino test
	./modulino
	./test

modulino: Modulino.hs
	ghc $(FLAGS) -o modulino -main-is Modulino Modulino.hs

test: Test.hs
	ghc $(FLAGS) -o test -main-is Test Test.hs

hlint:
	hlint .

lint: hlint

clean:
	-rm test
	-rm modulino
	-rm *.exe
	-rm *.o
	-rm *.hi
