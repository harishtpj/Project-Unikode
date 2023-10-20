// V program to compute factorial
// Created by M.V.Harish Kumar on 20-10-2023
import os { input }

fn factorial(n u32) f64 {
	if n <= 1 {
		return 1
	} else {
		return n * factorial(n - 1)
	}
}

fn main() {
	n := u32(input('Enter value for `n`: ').int())
	ans := factorial(n)
	println('${n}! = ${ans}')
}
