// Rust program to generate multiplication tables
// Created by M.V.Harish Kumar on 19-10-2023
use std::io::{self, Write};

fn gen_tables(num: i32, times: u32) {
    println!("{num} Tables");
    for i in 1..=times {
        println!("{num} × {i} = {}", num * i as i32);
    }
}

fn main() {
    let mut tmp = String::new();

    print!("Enter the no. to generate tables: ");
    io::stdout().flush().unwrap();

    io::stdin()
        .read_line(&mut tmp)
        .expect("Failed to read line");
    let n: i32 = tmp.trim().parse().expect("Invalid number");

    print!("Enter the no. till which to generate: ");
    io::stdout().flush().unwrap();

    tmp.clear();
    io::stdin()
        .read_line(&mut tmp)
        .expect("Failed to read line");
    let t: u32 = tmp.trim().parse().expect("Invalid number");

    gen_tables(n, t);
}
