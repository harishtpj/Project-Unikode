# Fibonacci series printer in Ruby
# Created by M.V.Harish Kumar on 01-02-2025

puts "Fibonacci Series Printer", ''
print 'Enter no of terms to print: '
n = gets.to_i
puts "The first #{n} terms of fibonacci series are:"
a,b = 0, 1
n.times do
  puts a
  a, b = b, a+b
end
