// Golang program to implement Jewels and Stones fn
// Written by M.V.Harish Kumar on 17-05-2024 
package main

import (
	"fmt"
	"bufio"
	"os"
	"strings"
)

func jewelStones(jewel, stone string) int {
	var count int
	for _, char := range jewel {
		if strings.Contains(stone, string(char)) {
			count += 1
		}
	}
	return count
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	fmt.Print("Enter string 1: ")
	scanner.Scan()
	s1 := scanner.Text()
	fmt.Print("Enter string 2: ")
	scanner.Scan()
	s2 := scanner.Text()
	fmt.Println("No. of common characters:", jewelStones(s1, s2))
}
