// Go program to sum numbers from 1 to n
// Created by M.V.Harish Kumar on 25-10-2023
package main

import "fmt"

func sum_to_n(n uint) uint {
	var sum, i uint = 0, 0
	for ; i <= n; i++ {
		sum += i
	}
	return sum
}

func main() {
	var num uint
	fmt.Print("Enter value for `n`: ")
	fmt.Scanf("%d", &num)
	fmt.Printf("Sum of 1 to %d is %d\n", num, sum_to_n(num))
}
