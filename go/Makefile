# Windows
ifeq ($(OS),Windows_NT)
	EXTENSION=.exe
else
	EXTENSION=
endif

MODULINO=bin/modulino$(EXTENSION)
TEST=bin/test$(EXTENSION)

all: $(MODULINO) $(TEST)
	$(MODULINO)
	$(TEST)

$(MODULINO): modulino.go
	go build -o $(MODULINO) modulino.go

$(TEST): test.go
	go build -o $(TEST) test.go

clean:
	-rm -rf bin
