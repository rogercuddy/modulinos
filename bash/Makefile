all: lib/scriptedmain lib/test
	./lib/scriptedmain
	./lib/test

shlint:
	-shlint lib/

shellcheck:
	-shellcheck lib/**

lint: shlint shellcheck
