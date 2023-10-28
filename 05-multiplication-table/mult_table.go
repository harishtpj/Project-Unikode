// Go program to generate multiplication tables
// Created by M.V.Harish Kumar on 28-10-2023
package main

import "fmt"

func gen_tables(n int, t int) {
	fmt.Printf("%d Tables\n", n)
	for i := 1; i <= t; i++ {
		fmt.Printf("%d × %d = %d\n", n, i, n*i)
	}
}

func main() {
	var num, times int
	fmt.Print("Enter the no. to generate tables: ")
	fmt.Scanf("%d\n", &num)
	fmt.Print("Enter the no. till which to generate: ")
	fmt.Scanf("%d\n", &times)
	gen_tables(num, times)
}
