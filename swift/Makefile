all: bin/Modulino bin/Test
	bin/Modulino
	bin/Test

bin/Modulino: Modulino.swift
	mkdir -p bin/
	swiftc -D MODULINO -o bin/Modulino Modulino.swift

Modulino.swiftmodule: Modulino.swift
	swiftc -emit-library -module-name Modulino -emit-module Modulino.swift

bin/Test: Test.swift Modulino.swiftmodule
	mkdir -p bin/
	swiftc -D TEST -o bin/Test Test.swift -I "." -L "." -lModulino -module-link-name Modulino

clean:
	-rm -rf bin/
	-rm *.swiftmodule
	-rm *.swiftdoc
	-rm *.dylib

swiftint:
	swiftlint

lint: swiftlint
