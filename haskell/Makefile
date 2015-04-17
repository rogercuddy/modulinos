FLAGS=-O2 -Wall -fwarn-tabs --make -fforce-recomp

MODULINO=bin/modulino
TEST=bin/test

all: $(MODULINO) $(TEST)
	$(MODULINO)
	$(TEST)

$(MODULINO): Modulino.hs
	mkdir -p bin
	ghc $(FLAGS) -o $(MODULINO) -main-is Modulino Modulino.hs

$(TEST): Test.hs
	mkdir -p bin
	ghc $(FLAGS) -o $(TEST) -main-is Test Test.hs

hlint:
	hlint .

lint: hlint

clean:
	-rm -rf bin
	-rm *.exe
	-rm *.o
	-rm *.hi
