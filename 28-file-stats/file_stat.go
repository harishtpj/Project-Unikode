// Golang program to print file statistics
// Written by M.V.Harish Kumar on 25-05-2024 
package main

import (
	"fmt"
	"os"
	"strings"
	"unicode"
)

func main() {
	nAlnum := 0
	ftxt, _ := os.ReadFile(os.Args[1])
	fmt.Println("File statistics for", os.Args[1])
	fmt.Println("\tNo. of lines in file:", strings.Count(string(ftxt), "\n"))
	fmt.Println("\tNo. of words in file:", len(strings.Fields(string(ftxt))))
	fmt.Println("\tNo. of bytes in file:", len(ftxt))
	for _, ch := range string(ftxt) {
		if unicode.IsLetter(ch) || unicode.IsDigit(ch) {
			nAlnum++
		}
	}
	percAlnum := float64(nAlnum)/float64(len(ftxt))*100
	fmt.Println("\t% of alphanumeric letters in file:", percAlnum)
}
