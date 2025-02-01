# Ruby program to generate mersenne numbers
# Created by M.V.Harish Kumar on 01-02-2025

print "Number of mersenne numbers to generate: "
n = gets.to_i
mersenne = []
(1..n).each { |i| mersenne << (2**i - 1)}
puts "The first #{n} mersenne numbers are:"
puts "\t#{mersenne.to_s[1...-1]}"
