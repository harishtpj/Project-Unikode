// Golang program to find ABC words
// Written by M.V.Harish Kumar on 18-05-2024 
package main

import (
	"fmt"
	"os"
	"bufio"
	"strings"
)

func countABCWords(fname string) (int, int) {
	abc_words := 0
	words := 0
	file, _ := os.Open(fname)
	defer file.Close()
	s := bufio.NewScanner(file)
	for s.Scan() {
		line := s.Text()
		iA := strings.Index(line, "a")
		iB := strings.Index(line, "b")
		iC := strings.Index(line, "c")
		if (iA != -1) && (iA < iB) && (iB < iC) {
			fmt.Println(strings.TrimSpace(line))
			abc_words += 1
		}
		words += 1
	}
	return abc_words, words
}

func main() {
	abcs, words := countABCWords(os.Args[1])
	fmt.Printf("Out of %d words, %d words are ABC words!", words, abcs)
}
