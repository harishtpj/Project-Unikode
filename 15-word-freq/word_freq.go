// Go program to count letter frequency
// Written by M.V.Harish Kumar on 18-06-2025
package main

import (
	"fmt"
	"bufio"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	fmt.Print("Enter a string: ")
	scanner.Scan()
	str := scanner.Text()
	freq := make(map[rune]int)

	for _, c := range str {
		freq[c]++
	}

	fmt.Println("The no. of occurances are:")
	for k, v := range freq {
		fmt.Printf("\t%#v: %d\n", string(k), v)
	}
}
