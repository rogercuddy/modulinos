FLAGS=-O

all: target/debug/modulino target/debug/test
	target/debug/modulino
	target/debug/test

target/debug/modulino: src/bin/modulino.rs
	cargo build

target/debug/test: src/bin/test.rs
	cargo build

clean:
	-rm -rf target
