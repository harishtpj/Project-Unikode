// Go program to print pascal triangle
// Written by M.V.Harish Kumar on 18-06-2025
package main

import (
	"fmt"
	"strings"
)

func fact(n uint) uint {
	var res uint = 1
	for i := range n {
		res *= i + 1
	}
	return res
}

func nCr(n, r uint) uint {
	return fact(n) / (fact(r) * fact(n-r))
}

func main() {
	var nterms uint
	fmt.Print("Enter no of rows to print: ")
	fmt.Scanln(&nterms)

	for i := range nterms {
		fmt.Print(strings.Repeat(" ", int(nterms - i - 1)))
		for j := range i + 1 {
			fmt.Print(nCr(i, j), " ")
		}
		fmt.Println()
	}
}
