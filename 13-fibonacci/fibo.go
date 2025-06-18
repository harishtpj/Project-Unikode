// Fibonacci series printer in Go
// Written by M.V.Harish Kumar on 18-06-2025
package main

import "fmt"

func main() {
	var limit uint

	fmt.Println("Fibonacci series printer\n")
	fmt.Print("Enter no of terms to print: ")
	fmt.Scanln(&limit)

	a, b := 0, 1
	fmt.Printf("The first %d terms of fibonacci series are:\n", limit)
	for _ = range limit {
		fmt.Println(a)
		a, b = b, a+b
	}
}
