all: scriptedmain

scriptedmain: scriptedmain.pas
	fpc -dstandalone scriptedmain.pas

test: test.pas scriptedmain
	fpc test.pas

clean:
	-rm test
	-rm scriptedmain
	-rm *.o
	-rm *.ppu