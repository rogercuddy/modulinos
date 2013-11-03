all: scriptedmain test
	./scriptedmain
	./test

scriptedmain: ScriptedMain.m ScriptedMain.h
	clang -Wall -Wextra -Wmost -framework Foundation -lobjc -o scriptedmain ScriptedMain.m

test: Test.m ScriptedMain.m ScriptedMain.h
	clang -Wall -Wextra -Wmost -framework Foundation -lobjc -o Test Test.m ScriptedMain.m

clean:
	-rm *.exe
	-rm scriptedmain
	-rm test
