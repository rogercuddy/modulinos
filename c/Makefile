CC=clang
FLAGS=-O2 -Wall -Wextra -Wmost -Weverything

all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: scriptedmain.c scriptedmain.h
	$(CC) $(FLAGS) -o scriptedmain -DSCRIPTEDMAIN scriptedmain.c

test: test.c scriptedmain.h scriptedmain.c
	$(CC) $(FLAGS) -o test test.c scriptedmain.c

splint:
	find . -type f -name '*.[ch]' -exec splint {} \;

vera++:
	find . -type f -name '*.cpp' -o -name '*.[ch]' -exec vera++ -s {} \;

lint: splint vera++

valgrind: scriptedmain test
	valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --track-fds=yes --dsymutil=yes ./scriptedmain
	valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --track-fds=yes --dsymutil=yes ./test

clean:
	-rm *.exe
	-rm scriptedmain
	-rm test
