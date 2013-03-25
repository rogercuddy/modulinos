all: run

run: scriptedmain test
	./scriptedmain
	./text

scriptedmain: scriptedmain.oz
	ozc -x scriptedmain.oz

scriptedmain.ozf: scriptedmain.oz
	ozc -c scriptedmain.oz

test: scriptedmain.ozf test.oz
	ozc -x scriptedmain.oz

clean:
	-rm test
	-rm scriptedmain
	-rm *.exe
