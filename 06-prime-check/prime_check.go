// Go program to check if a number is prime or not
// Created by M.V.Harish Kumar on 28-10-2023
// Uses the O(sqrt(n)) algorithm
package main

import (
	"fmt"
	"math"
)

func is_prime(n int) bool {
	if n == 2 {
		return true
	}

	sqrt_num := int(math.Sqrt(float64(n)))
	for i := 2; i <= sqrt_num; i++ {
		if n%i == 0 {
			return false
		}
	}

	return n > 1
}

func main() {
	var num int
	fmt.Println("Prime numbers Checker\n")
	fmt.Print("Enter the number to check for prime: ")
	fmt.Scanf("%d\n", &num)
	if is_prime(num) {
		fmt.Printf("%d is Prime\n", num)
	} else {
		fmt.Printf("%d is NOT Prime\n", num)
	}
}
