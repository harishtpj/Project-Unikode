// Number guessing game written in Golang
// Created by M.V.Harish Kumar on 17-05-2024
package main

import (
	"fmt"
	"math/rand/v2"
	"slices"
)	

func main() {
	rnum := 1 + rand.IntN(100)
	guesses := 0
	var guessed_nums[]int
	var unum int

	fmt.Println("Number Guessing Game")
	fmt.Println("Guess the number which the computer thinks of")
	fmt.Println("The number is between 1 to 100")

	for {
		fmt.Print("Enter your guess: ")
		fmt.Scanln(&unum)
		if rnum == unum {
			guesses += 1
			fmt.Printf("Yay! you've guessed the number in %d guesses\n", guesses)
			break
		} else if (unum > 100) || (unum < 1) {
			fmt.Println("Entered guess is out of range")
		} else if unum < rnum {
			fmt.Println("You've guessed low")
			if !slices.Contains(guessed_nums, unum) {
				guesses += 1
			} 
		} else {
			fmt.Println("You've guessed high")
			if !slices.Contains(guessed_nums, unum) {
				guesses += 1
			}
		}
		guessed_nums = append(guessed_nums, unum)
	}

}
