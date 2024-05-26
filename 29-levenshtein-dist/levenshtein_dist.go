// Golang program to calculate levenshtein distance
// Written by M.V.Harish Kumar on 26-05-2024
package main

import "fmt"

func levenshteinDist(str1, str2 string) int {
	d := make([][]int, len(str1)+1)
	for i := range d {
		d[i] = make([]int, len(str2)+1)
	}

	for i := range d {
		d[i][0] = i
	}

	for j := range d[0] {
		d[0][j] = j
	}

	for j := 1; j <= len(str2); j++ {
		for i := 1; i <= len(str1); i++ {
			delCost := d[i-1][j] + 1
			insCost := d[i][j-1] + 1
			substCost := d[i-1][j-1]
			if str1[i-1] != str2[j-1] {
				substCost++
			}
			d[i][j] = min(delCost, insCost, substCost)
		}
	}

	return d[len(str1)][len(str2)]
}

func main() {
	var word1, word2 string
	fmt.Print("Enter word 1: ")
	fmt.Scanln(&word1)
	fmt.Print("Enter word 2: ")
	fmt.Scanln(&word2)
	fmt.Println("Levenshtein distance between given words:", levenshteinDist(word1, word2))
}