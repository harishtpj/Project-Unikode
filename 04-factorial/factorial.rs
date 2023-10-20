// Rust program to compute factorial
// Created by M.V.Harish Kumar on 19-10-2023
use std::io::{self, Write};

fn factorial(n: u32) -> f64 {
    if n <= 1 {
        1.0f64
    } else {
        n as f64 * factorial(n - 1)
    }
}

fn main() {
    let mut n = String::new();

    print!("Enter value for `n`: ");
    io::stdout().flush().unwrap();

    io::stdin().read_line(&mut n).expect("Failed to read line");
    let n: u32 = n.trim().parse().expect("Invalid number");

    let ans = factorial(n);
    println!("{n}! = {ans}");
}
