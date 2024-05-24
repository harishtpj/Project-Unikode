// Golang program to multiply 2 matrices
// Written by M.V.Harish Kumar on 24-05-2024
package main

import (
	"encoding/csv"
	"fmt"
	"os"
	"strconv"
)

func readMatrix(reader *csv.Reader, rows, cols int) [][]int {
	var matrix [][]int
	for i := 0; i < rows; i++ {
		row := make([]int, cols)
		line, _ := reader.Read()
		for j, elem := range line {
			row[j], _ = strconv.Atoi(elem)
		}
		matrix = append(matrix, row)
	}
	return matrix
}

func printMatrix(mat [][]int) {
	for _, row := range mat {
		for _, elem := range row {
			fmt.Printf("%d ", elem)
		}
		fmt.Println()
	}
}

func main() {
	var r1, c1, r2, c2 int
	fmt.Print("Enter dimensions of matrix 1: ")
	fmt.Scanf("%dx%d\n", &r1, &c1)
	fmt.Print("Enter dimensions of matrix 2: ")
	fmt.Scanf("%dx%d\n", &r2, &c2)

	if c1 != r2 {
		fmt.Println("Columns of matrix 1 should be equal to Rows of matrix 2")
		return
	}

	file, _ := os.Open(os.Args[1])
	defer file.Close()
	reader := csv.NewReader(file)
	reader.Comma = ' '

	mat1 := readMatrix(reader, r1, c1)
	mat2 := readMatrix(reader, r2, c2)

	resMat := make([][]int, r1)
	for i := range resMat {
		resMat[i] = make([]int, c2)
	}
	for i := 0; i < r1; i++ {
		for j := 0; j < c2; j++ {
			for k := 0; k < r2; k++ {
				resMat[i][j] += mat1[i][k] * mat2[k][j]
			}
		}
	}

	fmt.Println("Product of:")
	printMatrix(mat1)
	fmt.Println("And")
	printMatrix(mat2)
	fmt.Println("is")
	printMatrix(resMat)
}
