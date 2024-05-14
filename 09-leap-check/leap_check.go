// Go program to check if a given year is leap
// Created by M.V.Harish Kumar on 02-04-2024
package main

import "fmt"

func isLeap(yr uint) bool {
	return (yr%4 == 0) && (yr%100 != 0) || (yr%400 == 0)
}

func main() {
	var year uint
	fmt.Println("Leap year checker")
	fmt.Print("Enter a year: ")
	fmt.Scanln(&year)
	if isLeap(year) {
		fmt.Println(year, "is a Leap year.")
	} else {
		fmt.Println(year, "is NOT a Leap year.")
	}
}
