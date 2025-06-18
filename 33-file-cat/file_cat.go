// Go program to print file contents
// Written by M.V.Harish Kumar on 18-06-2025
package main

import (
	"fmt"
	"os"
	"strings"
)

func main() {
	fname := os.Args[1]
	ftxt, _ := os.ReadFile(fname)
	border := strings.Repeat("-", 20)

	fmt.Println("Contents of", fname)
	fmt.Println(border)
	fmt.Println(string(ftxt))
	fmt.Println(border)
}
