MODULINO=bin/modulino
TEST=bin/test

all: $(MODULINO) $(TEST)
	$(MODULINO)
	$(TEST)

$(MODULINO): modulino.go
	mkdir -p bin
	go build -o $(MODULINO) modulino.go

$(TEST): test.go
	mkdir -p bin
	go build -o $(TEST) test.go

clean:
	-rm -rf bin
