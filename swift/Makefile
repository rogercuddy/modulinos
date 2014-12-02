all: bin/ScriptedMain bin/Test
	bin/ScriptedMain
	bin/Test

bin/ScriptedMain: ScriptedMain.swift
	mkdir -p bin/
	swiftc -D SCRIPTEDMAIN -o bin/ScriptedMain ScriptedMain.swift

ScriptedMain.swiftmodule: ScriptedMain.swift
	swiftc -emit-module ScriptedMain.swift

bin/Test: Test.swift ScriptedMain.swift ScriptedMain.swiftmodule
	mkdir -p bin/
	swiftc -D TEST -o bin/Test Test.swift

clean:
	-rm -rf bin/
	-rm *.swiftmodule
	-rm *.swiftdoc
	-rm *.dylib
