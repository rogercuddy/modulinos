all: modulino

modulino: Modulino.sac
	sac2c -o modulino Modulino.sac -Dmodulino

test: test.sac Modulino.sac
	sac2c Modulino.sac
	sac2c -o test test.sac

clean:
	-rm test
	-rm test.c
	-rm libModulinoTree.so
	-rm libModulinoMod.so
	-rm libModulinoMod.a
	-rm modulino
	-rm modulino.c
