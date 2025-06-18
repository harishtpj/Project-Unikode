// Go program to generate mersenne numbers
// Written by M.V.Harish Kumar on 18-06-2025
package main

import (
	"fmt"
	"math"
	"strings"
)

func main() {
	var num uint
	var mersenneList []string

	fmt.Print("Number of mersenne numbers to generate: ")
	fmt.Scanln(&num)

	for i := range num {
		val := fmt.Sprint(math.Exp2(float64(i + 1)) - 1)
		mersenneList = append(mersenneList, val)
	}

	fmt.Printf("The first %d mersenne numbers are:\n", num)
	fmt.Println("\t", strings.Join(mersenneList, ", "))

}
