# CoffeeScript program to sum numbers from 1 to n
# Created by M.V.Harish Kumar on 24-05-2024
readline = require 'readline'

rl = readline.createInterface
    input: process.stdin
    output: process.stdout

sumToN = (n) ->
    sum = 0
    for i in [1..n]
        sum += i
    return sum

rl.question "Enter value for `n`: ", (num) ->
    ans = sumToN(Number(num))
    console.log "The sum from 1 to #{num} is #{ans}"
    do rl.close