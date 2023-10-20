// V program to check if a number is prime or not
// Created by M.V.Harish Kumar on 20-10-2023
// Uses the O(sqrt(n)) algorithm
import os
import math

fn is_prime(n int) bool {
	if n == 2 {
		return true
	}

	sqrt_num := math.sqrti(n)
	for i in 2 .. sqrt_num {
		if n % i == 0 {
			return false
		}
	}

	return n > 1
}

fn main() {
	println('Prime numbers Checker\n')
	num := os.input('Enter the number to check for prime: ').int()
	if is_prime(num) {
		println('${num} is Prime')
	} else {
		println('${num} is NOT Prime')
	}
}
