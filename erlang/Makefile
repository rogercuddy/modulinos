all: test

test: compile
	erl -noshell -s scriptedmain
	erl -noshell -s test

compile: scriptedmain.beam test.beam

scriptedmain.beam: scriptedmain.erl
	erlc -Wall +debug_info scriptedmain.erl

test.beam: test.erl
	erlc -Wall +debug_info test.erl

~/.dialyzer_plt: compile
	dialyzer *.beam --build_plt --quiet

lint: ~/.dialyzer_plt
	dialyzer *.beam

clean:
	-rm *.beam
