// Golang program to validate no. using luhn test
// Written by M.V.Harish Kumar on 20-05-2024
package main

import (
	"fmt"
)

func luhnTest(num int) bool {
	var num_list []int
	len := 0
	s1 := 0
	s2 := 0
	for num != 0 {
		num_list = append(num_list, num%10)
		num /= 10
		len++
	}
	for i := 1; i <= len; i++ {
		if i%2 != 0 {
			s1 += num_list[i-1]
		} else {
			tmp := num_list[i-1] * 2
			s2 += tmp/10 + tmp%10
		}
	}
	return (s1+s2)%10 == 0
}

func main() {
	var num int
	fmt.Print("Enter a number: ")
	fmt.Scanln(&num)
	fmt.Printf("Is the number %d validates luhn: %t\n", num, luhnTest(num))
}
