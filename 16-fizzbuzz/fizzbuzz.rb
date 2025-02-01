# FizzBuzz program in Ruby
# Created by M.V.Harish Kumar on 01-02-2025

print "Enter no. of terms: "
n = gets.to_i

(1..n).each do |i|
  if i % 15 == 0
    puts "FizzBuzz"
  elsif i % 5 == 0
    puts "Buzz"
  elsif i % 3 == 0
    puts "Fizz"
  else
    puts i
  end
end
