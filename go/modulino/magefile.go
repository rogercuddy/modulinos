// +build mage

package main

import (
	"os"
	"os/exec"

	"github.com/magefile/mage/mg"
	"github.com/mcandre/mage-extras"
)

// artifactsPath describes where artifacts are produced.
var artifactsPath = "bin"

// Default references the default build task.
var Default = Test

// Test executes the integration test suite.
func Test() error {
	mg.Deps(Install)

	cmdModulino := exec.Command("modulino")
	cmdModulino.Stdout = os.Stdout
	cmdModulino.Stderr = os.Stderr

	if err := cmdModulino.Run(); err != nil {
		return err
	}

	cmdModulinoTest := exec.Command("modulino-test")
	cmdModulinoTest.Stdout = os.Stdout
	cmdModulinoTest.Stderr = os.Stderr

	return cmdModulinoTest.Run()
}

// GoVet runs go tool vet.
func GoVet() error { return mageextras.GoVet("-shadow") }

// GoLint runs golint.
func GoLint() error { return mageextras.GoLint() }

// Gofmt runs gofmt.
func GoFmt() error { return mageextras.GoFmt("-s", "-w") }

// GoImports runs goimports.
func GoImports() error { return mageextras.GoImports("-w") }

// Errcheck runs errcheck.
func Errcheck() error { return mageextras.Errcheck("-blank") }

// Nakedret runs nakedret.
func Nakedret() error { return mageextras.Nakedret("-l", "0") }

// Lint runs the lint suite.
func Lint() error {
	mg.Deps(GoVet)
	mg.Deps(GoLint)
	mg.Deps(GoFmt)
	mg.Deps(GoImports)
	mg.Deps(Errcheck)
	mg.Deps(Nakedret)
	return nil
}

// Install builds and installs Go applications.
func Install() error { return mageextras.Install() }

// Uninstall deletes installed Go applications.
func Uninstall() error { return mageextras.Uninstall("modulino", "modulino-test") }