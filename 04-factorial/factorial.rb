# Ruby program to compute factorial
# Created by M.V.Harish Kumar on 10-09-2023
<<<<<<< HEAD
class Integer
    def !
        (1..self).inject(:*)
	  end
=======

def factorial(n)
    (1..n).inject(:*)
>>>>>>> 1bc10791fb251e245e935b4186828b216d245e39
end

print "Enter value for `n`: "
n = gets.to_i
<<<<<<< HEAD
puts "#{n}! = #{!n}"
=======
puts "#{n}! = #{factorial n}"
>>>>>>> 1bc10791fb251e245e935b4186828b216d245e39
