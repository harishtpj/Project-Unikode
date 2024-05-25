# CoffeeScript program to generate mersenne numbers
# Created by M.V.Harish Kumar on 24-05-2024 
rl = (require 'readline').createInterface
    input: process.stdin
    output: process.stdout

rl.question "Enter no. of mersenne numbers to generate: ", (n) ->
    n = Number n
    console.log "The first #{n} mersenne numbers are:"
    console.log "\t#{(2**i-1 for i in [1..n])}"
    do rl.close
