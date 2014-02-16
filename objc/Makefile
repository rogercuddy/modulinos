FLAGS=-Wall -Wextra -Wmost -Weverything -framework Foundation -lobjc

all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: ScriptedMain.m ScriptedMain.h
	clang $(FLAGS) -o scriptedmain ScriptedMain.m

test: Test.m ScriptedMain.m ScriptedMain.h
	clang $(FLAGS) -o test Test.m ScriptedMain.m

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
