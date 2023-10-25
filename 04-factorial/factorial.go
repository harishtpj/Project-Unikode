// Go program to compute factorial
// Created by M.V.Harish Kumar on 25-10-2023
package main

import "fmt"

func factorial(n int) float64 {
	if n <= 1 {
		return 1
	} else {
		return float64(n) * factorial(n-1)
	}
}

func main() {
	var n int
	fmt.Print("Enter value for `n`: ")
	fmt.Scanf("%d", &n)
	fmt.Printf("%d! = %f\n", n, factorial(n))
}
