EXECUTABLE=scriptedmain

all: scriptedmain.ll
	llvm-as scriptedmain.ll
	llc scriptedmain.bc
	gcc -o $(EXECUTABLE) scriptedmain.s
	./$(EXECUTABLE)

clean:
	rm $(EXECUTABLE)
	rm scriptedmain.s
	rm scriptedmain.bc