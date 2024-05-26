# Number guessing game written in CoffeeScript
# Written by M.V.Harish Kumar on 26-05-2024
rl = require "readline"
    .createInterface
        input: process.stdin
        output: process.stdout

rnum = Math.floor((Math.random() * 100) + 1)
guesses = 0
guessedNums = []

console.log "Number guessing game"
console.log "Guess the number which the computer thinks of"
console.log "The number is between 1 to 100"

promptUser = ->
    rl.question "Enter your guess: ", (unum) ->
        unum = Number unum
        if unum is rnum
            console.log "Yay! You've guessed the number in #{++guesses} times"
            do rl.close
            return
        else if (unum > 100) or (unum < 0)
            console.log "Guessed number is out of range"
            guesses++
        else if unum > rnum
            console.log "You've guessed High"
            guesses++ if unum not in guessedNums
        else if unum < rnum
            console.log "You've guessed Low"
            guesses++ if unum not in guessedNums
        guessedNums.push unum
        do promptUser

do promptUser