// V program to generate multiplication tables
// Created by M.V.Harish Kumar on 20-10-2023
import os { input }

fn gen_tables(num int, times u32) {
	println('${num} Tables')
	for i in 1 .. (times + 1) {
		println('${num} × ${i} = ${num * i}')
	}
}

fn main() {
	n := input('Enter the no. to generate tables: ').int()
	t := u32(input('Enter the no. till which to generate: ').int())
	gen_tables(n, t)
}
