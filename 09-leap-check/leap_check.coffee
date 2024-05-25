# CoffeeScript program to check if given year is leap
# Written by M.V.Harish Kumar on 24-05-2024
rl = (require 'readline').createInterface
    input: process.stdin
    output: process.stdout

isLeap = (yr) -> (yr % 4 is 0 and yr % 100 isnt 0) or yr % 400 is 0

rl.question "Enter year: ", (year) ->
    console.log "#{year} is a #{if isLeap Number year then "\b" else "NOT"} Leap year"
    do rl.close
