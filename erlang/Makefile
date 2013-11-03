all: scriptedmain.beam test.beam
	erl -noshell -s scriptedmain
	erl -noshell -s test

scriptedmain.beam: scriptedmain.erl
	erlc -Wall scriptedmain.erl

test.beam: test.erl
	erlc -Wall test.erl

clean:
	-rm *.beam
