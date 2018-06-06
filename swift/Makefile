.PHONY: test clean-artifacts clean-infer

.build/release/modulino: Package.swift Source/modulino/main.swift Source/modulino-test/main.swift Source/ModulinoFramework/*.swift
	swift build -c release

all: test

test: .build/release/modulino
	.build/release/modulino
	.build/release/modulino-test

clean-artifacts:
	-rm -rf .build

clean-infer:
	-rm -rf infer-out

clean: clean-artifacts clean-infer

swiftlint:
	swiftlint

infer: clean
	infer -- make

lint: swiftlint infer
