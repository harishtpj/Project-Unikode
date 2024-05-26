# CoffeeScript program to calculate levenshtein distance
# Written by M.V.Harish Kumar on 26-05-2024
rl = require('readline').createInterface
    input: process.stdin
    output: process.stdout

levenshteinDist = (str1, str2) ->
    d = ((0 for [0..str2.length]) for [0..str1.length])
    (d[i][0] = i) for i in [0..str1.length]
    d[0] = [0..str2.length]

    for j in [1..str2.length]
        for i in [1..str1.length]
            delCost = d[i-1][j] + 1
            insCost = d[i][j-1] + 1
            substCost = d[i-1][j-1] + Number str1[i-1] != str2[j-1]
            d[i][j] = Math.min delCost, insCost, substCost
    d[str1.length][str2.length]

rl.question "Enter word 1: ", (w1) ->
    rl.question "Enter word 2: ", (w2) ->
        console.log "Levenshtein distance between given words: #{levenshteinDist w1, w2}"
        do rl.close

