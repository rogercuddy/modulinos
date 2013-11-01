all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: scriptedmain.c scriptedmain.h
	gcc -o scriptedmain -DSCRIPTEDMAIN scriptedmain.c

test: test.c scriptedmain.h scriptedmain.c
	gcc -o test test.c scriptedmain.c

lint:
	splint *.c *.h

clean:
	-rm scriptedmain
	-rm test
	-rm scriptedmain.exe
	-rm test.exe
