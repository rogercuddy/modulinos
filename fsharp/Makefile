MODULINO=bin/modulino.exe
TEST=bin/test.exe

all: $(MODULINO) $(TEST)
	mono $(MODULINO)
	mono $(TEST)

$(MODULINO): Modulino.fs
	mkdir -p bin
	fsharpc --nologo --out:$(MODULINO) Modulino.fs

$(TEST): Test.fs Modulino.fs
	mkdir -p bin
	fsharpc --nologo --out:$(TEST) Modulino.fs Test.fs

clean:
	-rm -rf bin
