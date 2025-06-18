// Go program to implement the 100 doors problem
// Written by M.V.Harish Kumar on 18-06-2025
package main

import "fmt"

func filterOpened(doors []bool) []int {
	var openDoorsIdx []int
	for i, v := range doors {
		if v {
			openDoorsIdx = append(openDoorsIdx, i+1)
		}
	}
	return openDoorsIdx
}

func main() {
	doors := [100]bool{}

	for j := range 100 {
		for i := j; i < 100; i += j+1 {
			doors[i] = !doors[i]
		}
	}

	for j := range 100 {
		sts := "closed"
		if doors[j] {
			sts = "open"
		}
		fmt.Printf("Door %d is %s\n", j+1, sts)
	}

	fmt.Println("Only", filterOpened(doors[:]), "doors are open!")
}
