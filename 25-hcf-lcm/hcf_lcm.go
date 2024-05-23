// Golang program to find HCF and LCM of 2 numbers
// Written by M.V.Harish Kumar on 22-05-2024
package main

import "fmt"

func hcf(p, q int) int {
	for q != 0 {
		p, q = q, p%q
	}
	return p
}

func lcm(p, q int) int {
	return p * q / hcf(p, q)
}

func main() {
	var n1, n2 int
	fmt.Print("Enter no 1: ")
	fmt.Scanln(&n1)
	fmt.Print("Enter no 2: ")
	fmt.Scanln(&n2)
	fmt.Printf("HCF = %d LCM = %d\n", hcf(n1, n2), lcm(n1, n2))
}
