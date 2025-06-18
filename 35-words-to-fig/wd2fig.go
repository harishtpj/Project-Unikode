// Go program to convert given number in words to integer
// Written by M.V.Harish Kumar on 18-06-2025
package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strings"
)

var onesTo20 = [20]string{"zero", "one", "two", "three", "four", "five", "six", "seven", "eight",
		"nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen",
		"seventeen", "eighteen", "nineteen"}
var tens = [10]string{"zero", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"}
var delims = [4]string{"hundred", "thousand", "million", "billion"}

func wd2fig(words string, num2wd map[string][2]float64) int {
	var cur, res float64
	cur, res = 0, 0
	for _, d := range delims {
		if strings.HasPrefix(words, d) {
			words = "one " + words
		}
	}
	
	wordList := strings.FieldsSeq(strings.ReplaceAll(strings.ToLower(words), " and ", " "))
	for word := range wordList {
		value, isPresent := num2wd[word]
		if !isPresent {
			panic("Illegal word encountered")
		}
		scale, incr := value[0], value[1]
		cur = cur*scale + incr
		if scale > 100 {
			res += cur
			cur = 0
		}
	}
	return int(res+cur)
}

func main() {
	num2wd := make(map[string][2]float64)

	for i, v := range onesTo20 {
		num2wd[v] = [2]float64{1, float64(i)}
	}

	for i, v := range tens {
		num2wd[v] = [2]float64{1, float64(i*10)}
	}

	for i, v := range delims {
		var expt float64 = math.Pow10(2)
		if i != 0 {
			expt = math.Pow10(i*3)
		}
		num2wd[v] = [2]float64{expt, 0}
	}

	scnr := bufio.NewScanner(os.Stdin)
	fmt.Print("Enter number(in words): ")
	scnr.Scan()
	num := scnr.Text()
	fmt.Printf("%#s in figures: %d\n", num, wd2fig(num, num2wd))
}
