// Package main provides a modulino-test executable.
package main

import (
	"fmt"

	"github.com/mcandre/modulinos/go/modulino"
)

// main is the entrypoint for this application.
func main() {
	fmt.Println("Test: The meaning of life is", modulino.MeaningOfLife())
}
