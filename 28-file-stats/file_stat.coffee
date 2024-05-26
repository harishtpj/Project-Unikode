# CoffeeScript program to print file statistics
# Written by M.V.Harish Kumar on 25-05-2024 
fs = require 'fs'
nAlnum = 0

ftxt = fs.readFileSync(process.argv[2]).toString()
console.log "File statistics for #{process.argv[2]}"
console.log "\tNo. of lines in file: #{ftxt.split("\n").length}"
console.log "\tNo. of words in file: #{ftxt.split(/\s+/).length}"
console.log "\tNo. of bytes in file: #{ftxt.length}"
nAlnum++ for ch, _ in ftxt when ch.match /[A-Za-z0-9]/
console.log "\t% of alphanumeric characters in file: #{nAlnum/ftxt.length*100}"
