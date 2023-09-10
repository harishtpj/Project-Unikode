# Ruby program to compute factorial
# Created by M.V.Harish Kumar on 10-09-2023

def factorial(n)
    n <= 1 ? 1 : n * factorial(n-1)
end

print "Enter value for `n`: "
n = gets.to_i
ans = factorial n
puts "#{n}! = #{ans}"