# Crystal program to sum numbers from 1 to n
# Written by M.V.Harish Kumar on 04-02-2025

def sum_to_n(n)
  tot = n
  n.times { |x| tot += x }
  tot
end

print "Enter value for `n`: "
n = gets.not_nil!.to_i
puts "The sum from 1 to #{n} is #{sum_to_n n}"
