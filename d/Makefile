FLAGS=-w -wi

MODULINO=bin/modulino
TEST=bin/text

all: $(MODULINO) $(TEST)
	$(MODULINO)
	$(TEST)

$(MODULINO): modulino.d
	mkdir -p bin/
	dmd $(FLAGS) -of$(MODULINO) modulino.d -version=modulino

$(TEST): test.d modulino.d
	mkdir -p bin/
	dmd $(FLAGS) -of$(TEST) test.d modulino.d -version=test

clean:
	-rm -rf bin/
	-rm *.o
