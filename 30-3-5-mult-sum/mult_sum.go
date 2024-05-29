// Golang program to find sum of all multiples of 3 or 5
// Written by M.V.Harish Kumar on 29-05-2024
package main

import "fmt"

func main() {
	sum := 0
	for i := 0; i < 1000; i++ {
		if (i % 3 == 0) || (i % 5 == 0) {
			sum += i
		}
	}
	fmt.Println("Sum of all multiples of 3 or 5 under 1000:", sum)
}