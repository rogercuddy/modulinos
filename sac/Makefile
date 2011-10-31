all: scriptedmain

scriptedmain: scriptedmain.sac
	sac2c -o scriptedmain scriptedmain.sac

test: test.sac scriptedmain.sac
	sac2c -o test test.sac scriptedmain.sac

clean:
	-rm test
	-rm test.c
	-rm scriptedmain
	-rm scriptedmain.c