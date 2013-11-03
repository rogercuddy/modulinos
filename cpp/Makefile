all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: scriptedmain.cpp scriptedmain.h
	g++ -o scriptedmain -DSCRIPTEDMAIN scriptedmain.cpp

test: test.cpp scriptedmain.h scriptedmain.cpp
	g++ -o test test.cpp scriptedmain.cpp

lint:
	cppcheck *.cpp *.h

clean:
	-rm *.exe
	-rm scriptedmain
	-rm test
