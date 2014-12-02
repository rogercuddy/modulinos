FRAMEWORKS=-framework Foundation
SDK=-sdk $(shell xcrun --show-sdk-path --sdk macosx)

all: bin/ScriptedMain bin/Test
	bin/ScriptedMain
	bin/Test

bin/ScriptedMain: ScriptedMain.swift
	mkdir -p bin/
	swiftc -D SCRIPTEDMAIN -o bin/ScriptedMain ScriptedMain.swift $(FRAMEWORK) $(SDK)

ScriptedMain.swiftmodule: ScriptedMain.swift
	swiftc -emit-library -module-name ScriptedMain -emit-module ScriptedMain.swift $(FRAMEWORK) $(SDK)

bin/Test: Test.swift ScriptedMain.swiftmodule
	mkdir -p bin/
	swiftc -D TEST -o bin/Test Test.swift -I "." -L "." -lScriptedMain -module-link-name ScriptedMain $(FRAMEWORK) $(SDK)

clean:
	-rm -rf bin/
	-rm *.swiftmodule
	-rm *.swiftdoc
	-rm *.dylib
