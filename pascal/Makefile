all: scriptedmain

scriptedmain: scriptedmain.p
	fpc scriptedmain.p

test: test.p scriptedmain
	fpc test.p

clean:
	-rm test
	-rm scriptedmain
	-rm *.o
	-rm *.ppu