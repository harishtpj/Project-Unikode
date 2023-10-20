// Simple Greeter program in Rust
// Created by M.V.Harish Kumar on 17-10-2023
use std::io::{self, Write};

fn main() {
    let mut name = String::new();

    print!("Please enter your name: ");
    io::stdout().flush().unwrap();

    io::stdin()
        .read_line(&mut name)
        .expect("Failed to read line");
    name.pop();

    println!("Hello, {name}! Hope you're fine");
}
