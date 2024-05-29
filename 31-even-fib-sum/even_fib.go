// Golang program to find sum of all even fibonacci nums under 4 million
// Written by M.V.Harish Kumar on 29-05-2024
package main

import "fmt"

func even_fib_sum() int {
	sum := 0
	a, b := 0, 1
	for {
		c := a + b
		if c >= 4_000_000 {
			return sum
		}
		if (c % 2 == 0) {
			sum += c
		}
		a, b = b, c
	}
}

func main() {
	fmt.Println("Sum of all even fibonacci numbers under 4 million:", even_fib_sum())
}