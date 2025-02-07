# Ruby program to compute factorial
# Created by M.V.Harish Kumar on 10-09-2023
class Integer
    def !
        (1..self).inject(:*)
	  end
end

print "Enter value for `n`: "
n = gets.to_i
puts "#{n}! = #{!n}"
