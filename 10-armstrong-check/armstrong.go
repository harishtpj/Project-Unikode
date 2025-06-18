// Go program to check if a given number is armstrong or not
// Written by M.V.Harish Kumar on 18-06-2025
package main

import (
	"fmt"
	"math"
)

func main() {
	var num, armNum uint;
	fmt.Print("Enter a number: ")
	fmt.Scanln(&num)

	numLen := math.Floor(math.Log10(float64(num))) + 1
	armNum = 0
	tmp := num

	for tmp != 0 {
		armNum += uint(math.Pow(float64(tmp % 10), numLen))
		tmp /= 10
	}

	if num == armNum {
		fmt.Println(num, "is an Armstrong number")
	} else {
		fmt.Println(num, "is NOT an Armstrong number")
	}
}
