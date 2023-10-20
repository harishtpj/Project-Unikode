// Rust program to check if a number is prime or not
// Created by M.V.Harish Kumar on 20-10-2023
// Uses the O(sqrt(n)) algorithm
use std::io::{self, Write};

fn is_prime(n: u32) -> bool {
    if n == 2 {
        return true;
    }

    let sqrt_num = f64::sqrt(n.into()) as u32;
    for i in 2..sqrt_num {
        if n % i == 0 {
            return false;
        }
    }

    n > 1
}

fn main() {
    println!("Prime numbers Checker\n");
    print!("Enter the number to check for prime: ");
    io::stdout().flush().unwrap();

    let mut num = String::new();
    io::stdin().read_line(&mut num).expect("Failed to read line");
    let num: u32 = num.trim().parse().expect("Invalid number");

    if is_prime(num) {
        println!("{num} is Prime");
    } else {
        println!("{num} is NOT Prime");
    }
}