FLAGS=-w -wi

all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: scriptedmain.d
	dmd $(FLAGS) scriptedmain.d -version=scriptedmain

test: test.d
	dmd $(FLAGS) test.d scriptedmain.d -version=test

clean:
	-rm *.exe
	-rm test
	-rm scriptedmain
	-rm *.o
