all: scriptedmain

scriptedmain: ScriptedMain.sac
	sac2c -o scriptedmain ScriptedMain.sac -Dscriptedmain

test: test.sac ScriptedMain.sac
	sac2c ScriptedMain.sac
	sac2c -o test test.sac

clean:
	-rm test
	-rm test.c
	-rm libScriptedMainTree.so
	-rm libScriptedMainMod.so
	-rm libScriptedMainMod.a
	-rm scriptedmain
	-rm scriptedmain.c
