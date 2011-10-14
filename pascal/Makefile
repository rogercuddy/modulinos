all: scriptedmain

scriptedmain: scriptedmain.pas
	fpc scriptedmain.pas

test: test.pas scriptedmain
	fpc test.pas

clean:
	-rm test
	-rm scriptedmain
	-rm *.o
	-rm *.ppu