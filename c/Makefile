all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: scriptedmain.c scriptedmain.h
	gcc -o scriptedmain -DSCRIPTEDMAIN scriptedmain.c -O2 -Wall

test: test.c scriptedmain.h scriptedmain.c
	gcc -o test test.c scriptedmain.c -O2 -Wall

lint:
	splint *.c *.h

clean:
	-rm *.exe
	-rm scriptedmain
	-rm test
