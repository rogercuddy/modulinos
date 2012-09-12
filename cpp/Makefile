all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: scriptedmain.cpp scriptedmain.h
	g++ -o scriptedmain scriptedmain.cpp scriptedmain.h

test: test.cpp scriptedmain.h scriptedmain.c
	g++ -o test test.cpp scriptedmain.cpp scriptedmain.h

clean:
	-rm scriptedmain
	-rm test