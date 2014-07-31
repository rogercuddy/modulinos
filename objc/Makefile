FLAGS=-Wall -Wextra -Wmost -Weverything -framework Foundation -lobjc

LINUX_FLAGS=

ifneq ($(OS),Windows_NT)
	UNAME_S := $(shell uname -s)

	ifeq ($(UNAME_S),Linux)
		FLAGS=-Wall -lobjc -o Version
		LINUX_FLAGS=-I `gnustep-config --variable=GNUSTEP_SYSTEM_HEADERS` -L `gnustep-config --variable=GNUSTEP_SYSTEM_LIBRARIES` -lgnustep-base -fconstant-string-class=NSConstantString -D_NATIVE_OBJC_EXCEPTIONS
	endif
endif

all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: ScriptedMain.m ScriptedMain.h
	clang $(FLAGS) $(LINUX_FLAGS) -o scriptedmain ScriptedMain.m

test: Test.m ScriptedMain.m ScriptedMain.h
	clang $(FLAGS) $(LINUX_FLAGS) -o test Test.m ScriptedMain.m

lint:
	oclint ScriptedMain.m -- $(FLAGS) -o scriptedmain
	oclint Test.m -- $(FLAGS) -o test

valgrind: $(BIN)
	valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --track-fds=yes --dsymutil=yes ./scriptedmain
	valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --track-fds=yes --dsymutil=yes ./test

clean:
	-rm *.exe
	-rm scriptedmain
	-rm test
