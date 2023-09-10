# Ruby program to check if a number is prime or not
# Created by M.V.Harish Kumar on 10-09-2023
# Uses the O(sqrt(n)) algorithm

def prime?(n)
    if n == 2
        return true
    end

    sqrt_num = Math.sqrt(n)
    (2..sqrt_num).each do |i|
        if n % i == 0
            return false
        end
    end

    return n > 1
end

puts "Prime numbers Checker\n"
print "Enter the number to check for prime: "
num = gets.to_i
if prime? num
    puts "#{num} is Prime"
else
    puts "#{num} is NOT Prime"
end