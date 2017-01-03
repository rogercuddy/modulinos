// Package main provides a modulino executable.
package main

import (
	"fmt"

	"github.com/mcandre/modulinos/go/modulino"
)

// main is the entrypoint for this application.
func main() {
	fmt.Println("Main: The meaning of life is", modulino.MeaningOfLife())
}
