all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: scriptedmain.cpp scriptedmain.h
	g++ -O2 -o scriptedmain -DSCRIPTEDMAIN scriptedmain.cpp

test: test.cpp scriptedmain.h scriptedmain.cpp
	g++ -O2 -o test test.cpp scriptedmain.cpp

lint:
	cppcheck *.cpp *.h

clean:
	-rm *.exe
	-rm scriptedmain
	-rm test
