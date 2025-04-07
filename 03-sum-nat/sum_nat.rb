# Ruby program to sum numbers from 1 to n
# Created by M.V.Harish Kumar on 10-09-2023
<<<<<<< HEAD
class Integer
    def sum_to(n)
    	(self..n).inject(:+)
    end
=======

def sum_to_n(n)
    (1..n).inject(:+)
>>>>>>> 1bc10791fb251e245e935b4186828b216d245e39
end

print "Enter value for `n`: "
n = gets.to_i
<<<<<<< HEAD
puts "The sum from 1 to #{n} is #{1.sum_to(n)}"
=======
puts "The sum from 1 to #{n} is #{sum_to_n n}"
>>>>>>> 1bc10791fb251e245e935b4186828b216d245e39
