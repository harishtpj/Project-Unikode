# Ruby program to check if number is armstrong
# Written by M.V.Harish Kumar on 26-01-2025

print "Enter the number: "
num = gets.chomp

arm_num = 0
num.chars.each do |c|
  arm_num += c.to_i ** num.length
end

puts "#{num} is #{'NOT ' if num.to_i != arm_num}a Armstrong number"
