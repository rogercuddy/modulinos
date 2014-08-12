SCRIPTED_MAIN=bin/scriptedmain
TEST=bin/test

FLAGS=-O2

all: test

test: $(SCRIPTED_MAIN) $(TEST)
	$(SCRIPTED_MAIN)
	$(TEST)

$(SCRIPTED_MAIN): scriptedmain.scm
	mkdir -p bin/
	csc $(FLAGS) -o $(SCRIPTED_MAIN) scriptedmain.scm

$(TEST): test.scm scriptedmain.scm
	mkdir -p bin/
	csc $(FLAGS) -o $(TEST) test.scm

clean:
	-rm -rf bin/
