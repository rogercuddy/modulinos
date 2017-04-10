FLAGS=-O

all: bin/modulino bin/test
	bin/modulino
	bin/test

bin/modulino: modulino.rs
	mkdir -p bin
	rustc -o bin/modulino modulino.rs $(FLAGS)

bin/test: test.rs modulino.rs
	rustc --crate-type=lib modulino.rs $(FLAGS)
	rustc -o bin/test test.rs -L . $(FLAGS)

clean:
	-rm -rf bin
	-rm -rf *.rlib
	-rm -rf *.dylib
	-rm -rf *.dSYM
