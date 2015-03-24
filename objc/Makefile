FLAGS=-Wall -Wextra -Wmost -Weverything -framework Foundation -lobjc
LINUX_FLAGS=

ifneq ($(OS),Windows_NT)
	UNAME_S := $(shell uname -s)

	ifeq ($(UNAME_S),Linux)
		FLAGS=-Wall -lobjc
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

oclint:
	oclint ScriptedMain.m -- $(FLAGS) -o $(SCRIPTED_MAIN)
	oclint Test.m -- $(FLAGS) -o $(TEST)

astyle-apply:
	-find . -type d -name android -prune -o -type f -name "*.java" -o -name "*.cpp" -o -name "*.[chm]" -exec astyle {} \; | grep -v Unchanged

astyle:
	-find . -type d -name android -prune -o -type f -name "*.java" -o -name "*.cpp" -o -name "*.[chm]" -exec astyle --dry-run {} \; | grep -v Unchanged

clean-astyle:
	-find . -type f -name "*.orig" -exec rm {} \;

lint: oclint astyle

valgrind: $(BIN)
	valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --track-fds=yes --dsymutil=yes ./scriptedmain
	valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --track-fds=yes --dsymutil=yes ./test

clean: clean-astyle
	-rm -rf bin/
