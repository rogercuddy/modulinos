MODULINO=modulino
TEST=test

all: test.ll modulino.s
	llvm-as test.ll
	llc -disable-cfi test.bc
	gcc -o $(TEST) test.s modulino.s
	./$(TEST)

modulino.s: modulino.ll
	llvm-as modulino.ll
	llc -disable-cfi modulino.bc
	gcc -o $(MODULINO) modulino.s
	./$(MODULINO)

clean:
	-rm $(TEST)
	-rm $(MODULINO)
	-rm test.s
	-rm test.bc
	-rm modulino.s
	-rm modulino.bc
