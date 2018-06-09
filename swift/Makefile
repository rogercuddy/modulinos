.PHONY: test clean-artifacts

.build/release/modulino: Package.swift Source/modulino/main.swift Source/modulino-test/main.swift Source/ModulinoFramework/*.swift
	swift build -c release

all: test

test: .build/release/modulino
	.build/release/modulino
	.build/release/modulino-test

clean-artifacts:
	-rm -rf .build

clean: clean-artifacts

swiftlint:
	swiftlint

lint: swiftlint
