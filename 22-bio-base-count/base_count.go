// Golang program to pretty-print DNA sequence
// Written by M.V.Harish Kumar on 19-05-2024
package main

import (
	"os"
	"fmt"
	"strings"
)

func main() {
	file, _ := os.ReadFile(os.Args[1])
	tot_count := 0
	order := 50
	orderPrinted := false
	bases := map[rune]int{
		'A':0,
		'C':0,
		'G':0,
		'T':0,
	}
	fmt.Println("SEQUENCE:")
	for _, base := range string(file) {
		if !strings.ContainsRune("ACTG", base) {continue}
		if !orderPrinted {
			fmt.Printf("\t%3d: ", order)
			orderPrinted = true
		}
		tot_count += 1
		bases[base] += 1
		fmt.Printf("%c", base)
		if tot_count == order {
			order += 50
			fmt.Println()
			orderPrinted = false
		}
	}
	fmt.Println("BASE COUNT:")
	for k, v := range bases {
		fmt.Printf("\t%c: %d\n", k, v)
	}
	fmt.Println("\tTotal:", tot_count)
}
