# Ruby program to sum numbers from 1 to n
# Created by M.V.Harish Kumar on 10-09-2023

def sum_to_n(n)
    sum = 0
    (n+1).times do |i|
        sum += i
    end
    return sum
end

print "Enter value for `n`: "
n = gets.to_i
ans = sum_to_n n
puts "The sum from 1 to #{n} is #{ans}"