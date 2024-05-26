# CoffeeScript program to check if a given number is armstrong
# Written by M.V.Harish Kumar on 26-05-2024
rl = require 'readline'
    .createInterface
        input: process.stdin
        output: process.stdout

isArmstrong = (n) ->
    exp = n.length
    sum = 0
    (sum += parseInt(d) ** exp) for d, _ in n
    sum is parseInt n

rl.question "Enter a number: ", (num) ->
    console.log "#{num} is #{if isArmstrong num then "\b" else "NOT"} an Armstrong number"
    do rl.close
