// Rust program to sum numbers from 1 to n
// Created by M.V.Harish Kumar on 19-10-2023
use std::io::{self, Write};

fn sum_to_n(n: u32) -> u32 {
    let mut sum = 0;
    for i in 1..=n {
        sum += i;
    }
    sum
}

fn main() {
    print!("Enter value for `n`: ");
    io::stdout().flush().unwrap();

    let mut n = String::new();
    io::stdin().read_line(&mut n).expect("Failed to read line");

    let n: u32 = n.trim().parse().expect("Invalid Numeric Literal");
    let sum = sum_to_n(n);

    println!("The sum from 1 to {n} is {sum}");
}
