all: scriptedmain.exe test.exe

scriptedmain.exe: ScriptedMain.fs
	fsharpc --out:scriptedmain.exe ScriptedMain.fs

test.exe: Test.fs ScriptedMain.fs
	fsharpc --out:test.exe ScriptedMain.fs Test.fs

clean:
	-rm *.exe