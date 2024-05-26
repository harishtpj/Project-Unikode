# CoffeeScript program to print the no of occurances of characters
# Created by M.V.Harish Kumar on 26-05-2024
rl = require 'readline'
    .createInterface
        input: process.stdin
        output: process.stdout

rl.question "Enter a string: ", (str) ->
    freq = {}
    for ch, _ in str
        if ch not in freq
            freq[ch] = 1
        else freq++
    
    console.log "The no. of occurances are:"
    console.log "\t'#{ch}': #{occ}" for ch, occ of freq
    do rl.close