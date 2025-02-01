# Ruby program to print pascal triangle
# Written by M.V.Harish Kumar on 01-02-2025

class Integer
  def !
    self != 0 ? (1..self).inject(:*) : 1
  end
end

print "Enter no. of rows: "
n = gets.to_i

n.times do |i|
  print ' ' * (n-i-1)
  i.succ.times do |j|
    print !i/(!j * !(i-j)), ' '
  end
  puts
end  
