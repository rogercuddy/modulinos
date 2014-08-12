SCRIPTED_MAIN_OBJ=scriptedmain.so
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

$(SCRIPTED_MAIN_OBJ): scriptedmain.scm
	csc -dynamic $(FLAGS) scriptedmain.scm

$(TEST): test.scm $(SCRIPTED_MAIN_OBJ)
	mkdir -p bin/
	csc $(FLAGS) -o $(TEST) test.scm

clean:
	-rm -rf bin/
