FLAGS=-w +a

MODULINO=bin/modulino
TEST=bin/test

all: $(MODULINO) $(TEST)
	$(MODULINO)
	$(TEST)

$(MODULINO): modulino.ml
	mkdir -p bin
	ocamlc $(FLAGS) -o $(MODULINO) -linkall str.cma modulino.ml

$(TEST): modulino.ml test.ml
	mkdir -p bin
	ocamlc $(FLAGS) -o $(TEST) -linkall str.cma modulino.ml test.ml

hlint:
	hlint .

lint: hlint

clean:
	-rm -rf bin
	-rm *.exe
	-rm *.cmo
	-rm *.cmi
