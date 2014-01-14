all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: scriptedmain.rs
	rustc scriptedmain.rs

test: test.rs scriptedmain.rs
	rustc --lib scriptedmain.rs
	rustc test.rs -L .

clean:
	-rm *.exe
	-rm test
	-rm scriptedmain
	-rm -rf *.dylib
	-rm -rf *.dSYM
