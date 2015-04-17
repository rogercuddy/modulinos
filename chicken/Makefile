MODULINO_OBJ=modulino.so
MODULINO=bin/modulino
TEST=bin/test

FLAGS=-O2

all: test

test: $(MODULINO) $(TEST)
	$(MODULINO)
	$(TEST)

$(MODULINO): modulino.scm
	mkdir -p bin/
	csc $(FLAGS) -o $(MODULINO) modulino.scm

$(MODULINO_OBJ): modulino.scm
	csc -dynamic $(FLAGS) modulino.scm

$(TEST): test.scm $(MODULINO_OBJ)
	mkdir -p bin/
	csc $(FLAGS) -o $(TEST) test.scm

clean:
	-rm -rf bin/
	-rm *.so
