# Ruby program to check if given year is leap
# Written by M.V.Harish Kumar on 26-01-2025

def is_leap?(yr)
  (yr % 4 == 0) and (yr % 100 != 0) or (yr % 400 == 0)
end

puts "Leap year checker"
print "Enter the year: "
yr = gets.to_i
puts "#{yr} is #{'NOT ' unless is_leap? yr}a Leap Year"
