# Ruby program to check if a number is prime or not
# Created by M.V.Harish Kumar on 10-09-2023
# Uses the O(sqrt(n)) algorithm
class Integer
    def prime?
    	return true if self == 2

    	(2..Math.sqrt(self)).each do |i|
    	    return false if self % i == 0
    	end

    	return self > 1
    end
end

puts "Prime numbers Checker\n"
print "Enter the number to check for prime: "
num = gets.to_i
if num.prime?
    puts "#{num} is Prime"
else
    puts "#{num} is NOT Prime"
end
