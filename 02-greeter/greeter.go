// Simple Greeter program in Go
// Created by M.V.Harish Kumar on 25-10-2023
package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	fmt.Print("Please enter your name: ")
	scanner.Scan()
	name := scanner.Text()
	fmt.Printf("Hello, %s! Hope you're fine\n", name)
}
