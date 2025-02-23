# Crystal program to compute factorial
# Created by M.V.Harish Kumar on 04-02-2025
require "big"

def factorial(n : BigInt) : BigInt
  n <= 1 ? BigInt.new(1) : n*factorial(n - 1)
end

print "Enter value for `n`: "
n = BigInt.new(read_line.to_i)
puts "#{n}! = #{n.factorial}"
