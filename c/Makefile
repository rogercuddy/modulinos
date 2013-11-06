CC=clang
FLAGS=-O2 -Wall -Wextra -Wmost -Weverything

all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: scriptedmain.c scriptedmain.h
	$(CC) $(FLAGS) -o scriptedmain -DSCRIPTEDMAIN scriptedmain.c

test: test.c scriptedmain.h scriptedmain.c
	$(CC) $(FLAGS) -o test test.c scriptedmain.c

lint:
	splint *.c *.h

clean:
	-rm *.exe
	-rm scriptedmain
	-rm test
