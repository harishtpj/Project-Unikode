# Ruby program to sum numbers from 1 to n
# Created by M.V.Harish Kumar on 10-09-2023

def sum_to_n(n)
    (1..n).inject(:+)
end

print "Enter value for `n`: "
n = gets.to_i
puts "The sum from 1 to #{n} is #{sum_to_n n}"
