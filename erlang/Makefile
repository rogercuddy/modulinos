all: test

test: compile
	erl -noshell -s modulino
	erl -noshell -s test

compile:
	for f in *.erl; do erlc -Wall +debug_info $$f; done

plt:
	dialyzer *.beam --build_plt --apps erts kernel stdlib

lint: compile
	dialyzer *.beam --quiet

clean:
	-rm *.beam
