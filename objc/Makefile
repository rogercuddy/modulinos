FLAGS=-Wall -Wextra -Wmost -Weverything -framework Foundation -lobjc

LINUX_FLAGS=

ifneq ($(OS),Windows_NT)
	UNAME_S := $(shell uname -s)

	ifeq ($(UNAME_S),Linux)
		FLAGS=-Wall -lobjc -o Version
		LINUX_FLAGS=-I `gnustep-config --variable=GNUSTEP_SYSTEM_HEADERS` -L `gnustep-config --variable=GNUSTEP_SYSTEM_LIBRARIES` -lgnustep-base -fconstant-string-class=NSConstantString -D_NATIVE_OBJC_EXCEPTIONS
	endif
endif

SCRIPTED_MAIN=bin/scriptedmain
TEST=bin/test

all: $(SCRIPTED_MAIN) $(TEST)
	$(SCRIPTED_MAIN)
	$(TEST)

$(SCRIPTED_MAIN): ScriptedMain.m ScriptedMain.h
	mkdir -p bin/
	clang $(FLAGS) $(LINUX_FLAGS) -o $(SCRIPTED_MAIN) ScriptedMain.m

$(TEST): Test.m ScriptedMain.m ScriptedMain.h
	mkdir -p bin/
	clang $(FLAGS) $(LINUX_FLAGS) -o $(TEST) Test.m ScriptedMain.m

lint:
	oclint ScriptedMain.m -- $(FLAGS) -o $(SCRIPTED_MAIN)
	oclint Test.m -- $(FLAGS) -o $(TEST)

valgrind: $(BIN)
	valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --track-fds=yes --dsymutil=yes ./scriptedmain
	valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --track-fds=yes --dsymutil=yes ./test

clean:
	-rm -rf bin/
