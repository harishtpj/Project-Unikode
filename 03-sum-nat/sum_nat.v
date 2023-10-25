// V program to sum numbers from 1 to n
// Created by M.V.Harish Kumar on 20-10-2023
import os {input}

fn main() {
	n := u32(input('Enter value for `n`: ').int())
	ans := sum_to_n(n)
	println('The sum from 1 to ${n} is ${ans}')
}

fn sum_to_n(n u32) u64 {
	mut sum := u64(0)
	for i in 1..(n+1) {
		sum += i
	}
	return sum
}