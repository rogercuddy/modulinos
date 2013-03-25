all: run

run: scriptedmain test
	./scriptedmain
	./test

scriptedmain: scriptedmain.oz
	ozc -x scriptedmain.oz

scriptedmain.ozf: scriptedmain.oz
	ozc -c scriptedmain.oz

test: scriptedmain.ozf test.oz
	ozc -x test.oz

clean:
	-rm test
	-rm scriptedmain
	-rm *.ozf
	-rm *.exe
