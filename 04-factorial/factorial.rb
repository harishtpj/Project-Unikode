# Ruby program to compute factorial
# Created by M.V.Harish Kumar on 10-09-2023

def factorial(n)
    (1..n).inject(:*)
end

print "Enter value for `n`: "
n = gets.to_i
puts "#{n}! = #{factorial n}"
