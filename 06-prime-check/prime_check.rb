# Ruby program to check if a number is prime or not
# Created by M.V.Harish Kumar on 10-09-2023
# Uses the O(sqrt(n)) algorithm

def prime?(n)
    return true if n == 2
    
    sqrt_num = Math.sqrt(n)
    (2..sqrt_num).each do |i|
        return false if  n % i == 0
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
