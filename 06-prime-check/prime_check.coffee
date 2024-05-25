# CoffeeScript program to check if a no is prime
# Written by M.V.Harish Kumar on 24-05-2024 
rl = (require 'readline').createInterface
    input: process.stdin
    output: process.stdout

isPrime = (n) ->
    return true if n == 2

    for i in [2..(n ** 0.5)]
        return false if n % i == 0
    
    n > 1

rl.question "Enter a number: ", (num) ->
    console.log "#{num} is #{if isPrime Number num then "" else "NOT"} Prime"
    do rl.close