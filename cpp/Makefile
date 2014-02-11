CC=clang++
FLAGS=-O2 -Wall -Wextra -Weffc++ -Wmost -Weverything

all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: scriptedmain.cpp scriptedmain.h
	$(CC) $(FLAGS) -o scriptedmain -DSCRIPTEDMAIN scriptedmain.cpp

test: test.cpp scriptedmain.h scriptedmain.cpp
	$(CC) $(FLAGS) -o test test.cpp scriptedmain.cpp

cppcheck:
	cppcheck --enable=all --suppress=missingIncludeSystem .

cpplint:
	cpplint --filter=-readability/streams,-build/header_guard,-whitespace/parens,-readability/braces,-whitespace/newline,-legal/copyright *.cpp *.h

splint:
	find . -type f -name '*.c' -exec splint {} \;

vera++:
	find . -type f -name '*.cpp' -exec vera++ -s {} \;
	find . -type f -name '*.c' -exec vera++ -s {} \;
	find . -type f -name '*.h' -exec vera++ -s {} \;

lint: cppcheck splint vera++

clean:
	-rm *.exe
	-rm scriptedmain
	-rm test
