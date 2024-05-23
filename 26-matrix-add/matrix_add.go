// Golang program to add 2 matrix
// Written by M.V.Harish Kumar on 23-05-2024
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
	var rows, cols int
	fmt.Print("Enter no. of rows: ")
	fmt.Scanln(&rows)
	fmt.Print("Enter no. of columns: ")
	fmt.Scanln(&cols)

	file, _ := os.Open(os.Args[1])
	defer file.Close()
	reader := csv.NewReader(file)
	reader.Comma = ' '

	mat1 := readMatrix(reader, rows, cols)
	mat2 := readMatrix(reader, rows, cols) // Golang reader generally skips newline

	var resMat [][]int
	for i := 0; i < rows; i++ {
		row := make([]int, cols)
		for j := 0; j < cols; j++ {
			row[j] = mat1[i][j] + mat2[i][j]
		}
		resMat = append(resMat, row)
	}

	fmt.Println("Sum of:")
	printMatrix(mat1)
	fmt.Println("And")
	printMatrix(mat2)
	fmt.Println("is")
	printMatrix(resMat)
}
