all: run

run: modulino test
	./modulino
	./test

modulino: modulino.oz
	ozc -x modulino.oz

modulino.ozf: modulino.oz
	ozc -c modulino.oz

test: modulino.ozf test.oz
	ozc -x test.oz

clean:
	-rm test
	-rm modulino
	-rm *.ozf
	-rm *.exe
