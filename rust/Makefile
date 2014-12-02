FLAGS=-O -W missing-doc -W non-uppercase-statics -W unnecessary-qualification -W unnecessary-typecast -W unused-result

all: bin/scriptedmain bin/test
	bin/scriptedmain
	bin/test

bin/scriptedmain: scriptedmain.rs
	mkdir -p bin/
	rustc -o bin/scriptedmain scriptedmain.rs $(FLAGS)

bin/test: test.rs scriptedmain.rs
	rustc --crate-type=lib scriptedmain.rs $(FLAGS)
	rustc -o bin/test test.rs -L . $(FLAGS)

clean:
	-rm -rf bin/
	-rm -rf *.rlib
	-rm -rf *.dylib
	-rm -rf *.dSYM
