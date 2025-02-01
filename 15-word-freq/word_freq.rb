# Ruby program to count letter frequency
# Written by M.V.Harish Kumar on 01-02-2025

print "Enter a string: "
str = gets.chomp
freq = {}
str.each_char do |ch|
  if freq.include? ch
    freq[ch] += 1
  else
    freq[ch] = 1
  end
end

puts "The no of occurances are:"
freq.each do |ch, cnt|
  puts "\t#{ch.inspect}: #{cnt}"
end
