EXECUTABLE_SM=scriptedmain
EXECUTABLE_TEST=test

all: test.ll scriptedmain.s
	llvm-as test.ll
	llc test.bc
	gcc -o $(EXECUTABLE_TEST) test.s scriptedmain.s
	./$(EXECUTABLE_TEST)

scriptedmain.s: scriptedmain.ll
	llvm-as scriptedmain.ll
	llc scriptedmain.bc
	gcc -o $(EXECUTABLE_SM) scriptedmain.s
	./$(EXECUTABLE_SM)

clean:
	rm $(EXECUTABLE_TEST)
	rm $(EXECUTABLE_SM)
	rm test.s
	rm test.bc
	rm scriptedmain.s
	rm scriptedmain.bc