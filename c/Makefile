all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: scriptedmain.c scriptedmain.h
	gcc -O2 -Wall -Wextra -o scriptedmain -DSCRIPTEDMAIN scriptedmain.c

test: test.c scriptedmain.h scriptedmain.c
	gcc -O2 -Wall -Wextra -o test test.c scriptedmain.c

lint:
	splint *.c *.h

clean:
	-rm *.exe
	-rm scriptedmain
	-rm test
