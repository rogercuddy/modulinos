FLAGS=-O2 -Wall -Wextra -Weffc++

all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: scriptedmain.cpp scriptedmain.h
	g++ $(FLAGS) -o scriptedmain -DSCRIPTEDMAIN scriptedmain.cpp

test: test.cpp scriptedmain.h scriptedmain.cpp
	g++ $(FLAGS) -o test test.cpp scriptedmain.cpp

lint:
	cppcheck --enable=all --suppress=missingIncludeSystem .

clean:
	-rm *.exe
	-rm scriptedmain
	-rm test
