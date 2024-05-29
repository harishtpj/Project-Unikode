# CoffeeScript program to find sum of all multiples of 3 or 5
# Written by M.V.Harish Kumar on 29-05-2024
sum = 0
sum += n for n in [1...1000] when (n % 3 == 0) or (n % 5 == 0)
console.log "Sum of all multiples of 3 or 5 under 1000: #{sum}"