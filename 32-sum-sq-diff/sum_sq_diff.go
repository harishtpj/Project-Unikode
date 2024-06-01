// Golang program to find sum square difference
// Written by M.V.Harish Kumar on 30-05-2024
package main

import (
	"fmt"
	"math"
)

func main() {
	sum_squares := 0
	square_sum := 0

	for i := 1; i <= 100; i++ {
		square_sum += i
		sum_squares += int(math.Pow(float64(i), 2.0))
	}
	square_sum = int(math.Pow(float64(square_sum), 2.0))
	fmt.Println("Sum of squares:", sum_squares)
	fmt.Println("Square of sum:", square_sum)
	fmt.Println("Difference:", square_sum-sum_squares)
}
