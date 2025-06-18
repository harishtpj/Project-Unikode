// Go program to print words in a frame
// Written by M.V.Harish Kumar on 18-06-2025
package main

import (
	"bufio"
	"fmt"
	"os"
	"slices"
	"strings"
)

func main() {
	scnr := bufio.NewScanner(os.Stdin)
	fmt.Print("Enter a string: ")
	scnr.Scan()
	words := strings.Fields(scnr.Text())
	maxLen := len(slices.MaxFunc(words, func(a, b string) int { 
		return len(a) - len(b)
	}))

	border := strings.Repeat("*", maxLen + 4)
	fmt.Println(border)
	for _, word := range words {
		fmt.Printf("* %-*s *\n", maxLen, word)
	}
	fmt.Println(border)
}
