// Golang program to calculate additive primes under 500
// Written by M.V.Harish Kumar on 21-05-2024
package main

import (
	"fmt"
	"math"
)

func isPrime(n int) bool {
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

func digitSum(n int) int {
	sum := 0
	for n > 0 {
		sum += n % 10
		n /= 10
	}
	return sum
}

func main() {
	fmt.Println("Additive primes less than 500:")
	n_primes := 0
	for i := 2; i < 500; i++ {
		if isPrime(i) && isPrime(digitSum(i)) {
			fmt.Println(i)
			n_primes += 1
		}
	}
	fmt.Println("No. of additive primes less than 500:", n_primes)
}
