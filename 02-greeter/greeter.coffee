# Simple greeter program in CoffeeScript
# Written by M.V.Harish Kumar on 24-05-2024 
readline = require 'readline'

rl = readline.createInterface
    input: process.stdin
    output: process.stdout

rl.question "Please enter your name: ", (name) ->
    console.log "Hello, #{name}! Hope you're fine"
    do rl.close