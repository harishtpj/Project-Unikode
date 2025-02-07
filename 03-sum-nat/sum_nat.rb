# Ruby program to sum numbers from 1 to n
# Created by M.V.Harish Kumar on 10-09-2023
class Integer
    def sum_to(n)
    	(self..n).inject(:+)
    end
end

print "Enter value for `n`: "
n = gets.to_i
puts "The sum from 1 to #{n} is #{1.sum_to(n)}"
