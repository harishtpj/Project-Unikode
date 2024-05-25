# CoffeeScript program to compute first n fibonacci terms
# Written by M.V.Harish Kumar on 24-05-2024 
rl = (require 'readline').createInterface
    input: process.stdin
    output: process.stdout

fib = (n) -> if n in [0, 1] then n else (fib n-2) + (fib n-1)
console.log "Fibonacci series printer\n"

rl.question "Enter no. of terms: ", (num) ->
    num = Number num
    console.log fib i for i in [0..num-1]
    do rl.close
