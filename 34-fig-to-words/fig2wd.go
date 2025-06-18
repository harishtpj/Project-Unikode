// Go program to convert given number to words
// Written by M.V.Harish Kumar on 18-06-2025
package main

import "fmt"

func fig2wd(n int) string {
	onesTo20 := [20]string{"zero", "one", "two", "three", "four", "five", "six", "seven", "eight",
			"nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen",
			"seventeen", "eighteen", "nineteen"}
	tens := [10]string{"zero", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"}

	if n < 0 || n >= 1e12 {
		panic("Value out of range")
	} else if n < 20 {
		return onesTo20[n]
	} else if n < 100 {
		t, o := (n / 10), (n % 10)
		cont := ""
		if o > 0 {
			cont = fig2wd(o)
		}
		return fmt.Sprintf("%s %s", tens[t], cont)
	} else if n < 1e3 {
		h, t := (n / 100), (n % 100)
		cont := ""
		if t > 0 {
			cont = fig2wd(t)
		}
		return fmt.Sprintf("%s hundred and %s", onesTo20[h], cont)
	} else if n < 1e6 {
		th, h := (n / 1000), (n % 1000)
		cont := ""
		if h > 0 {
			cont = fig2wd(h)
		}
		return fmt.Sprintf("%s thousand %s", fig2wd(th), cont)
	} else if n < 1e9 {
		m, th := (n / 1_000_000), (n % 1_000_000)
		cont := ""
		if th > 0 {
			cont = fig2wd(th)
		}
		return fmt.Sprintf("%s million %s", fig2wd(m), cont)
	} else {
		b, m := (n / 1_000_000_000), (n % 1_000_000_000)
		cont := ""
		if m > 0 {
			cont = fig2wd(m)
		}
		return fmt.Sprintf("%s billion %s", fig2wd(b), cont)
	}
}

func main() {
	var num int
	fmt.Print("Enter a number: ")
	fmt.Scanln(&num)
	fmt.Println(num, "in words:", fig2wd(num))
}
