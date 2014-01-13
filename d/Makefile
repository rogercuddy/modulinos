all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: scriptedmain.d
	dmd scriptedmain.d -version=scriptedmain

test: test.d
	dmd test.d scriptedmain.d -version=test

clean:
	-rm *.exe
	-rm test
	-rm scriptedmain
	-rm *.o
