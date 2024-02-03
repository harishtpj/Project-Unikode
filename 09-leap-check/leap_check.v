// V Program to check if a given year is Leap
// Written by M.V.Harish Kumar on 03-02-2024
import os

fn is_leap(yr int) bool {
	return (yr % 4 == 0 && yr % 100 != 0) || yr % 400 == 0
}

fn main() {
	println('Leap year checker')
	yr := os.input('Enter year: ').int()
	if is_leap(yr) {
		println('${yr} is a Leap Year')
	} else {
		println('${yr} is NOT a Leap Year')
	}
}
