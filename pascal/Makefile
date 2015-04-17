all: modulino

modulino: modulino.pas
	fpc -dmodulino modulino.pas

test: test.pas modulino
	fpc test.pas

clean:
	-rm test
	-rm modulino
	-rm *.o
	-rm *.ppu
