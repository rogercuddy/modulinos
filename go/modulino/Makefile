# Windows
ifeq ($(OS),Windows_NT)
	EXTENSION=.exe
	RM=cmd /c rmdir /s /q
else
	EXTENSION=
	RM=rm -rf
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
	-$(RM) bin
