# CoffeeScript program to print multiplication tables
# Written by M.V.Harish Kumar on 24-05-2024 
rl = (require 'readline').createInterface
    input: process.stdin
    output: process.stdout

genTables = (number, times) ->
    console.log "#{number} Table\n"
    for i in [1..times]
        console.log "#{number} × #{i} = #{number*i}"

rl.question "Enter the no. to generate tables: ", (n) ->
    rl.question "Enter the no. till which to generate: ", (t) ->
        genTables Number(n), Number(t)
        do rl.close
