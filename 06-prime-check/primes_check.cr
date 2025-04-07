# Crystal program to check for Prime number
# Written by M.V.Harish Kumar on 04-02-2025

struct Int32
  def prime?
    return true if self == 2
    (2..Math.sqrt(self).to_i).each do |i|
      return false if self % i == 0
    end
    return self > 1
  end
end

puts "Prime number Checker\n"
print "Enter the number: "
n = read_line.to_i
if n.prime?
  puts "#{n} is PRIME"
else
  puts "#{n} is NOT a prime"
end
