# CoffeeScript program to compute factorial
# Written by M.V.Harish Kumar on 24-05-2024 
readline = require 'readline'

rl = readline.createInterface
    input: process.stdin
    output: process.stdout

factorial = (n) -> if n <= 1 then 1 else n * factorial(n - 1)

rl.question "Enter value for `n`: ", (num) ->
    ans = factorial Number num
    console.log "#{num}! = #{ans}"
    do rl.close
