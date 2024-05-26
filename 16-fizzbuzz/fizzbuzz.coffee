# CoffeeScript program to print FizzBuzz
# Created by M.V.Harish Kumar on 26-05-2024
rl = require 'readline'
    .createInterface
        input: process.stdin
        output: process.stdout

rl.question "Enter no. of terms: ", (num) ->
    num = parseInt num
    for i in [1..num]
        if i % 15 is 0
            console.log "FizzBuzz"
        else if i % 3 is 0
            console.log "Fizz"
        else if i % 5 is 0
            console.log "Buzz"
        else console.log i
    do rl.close