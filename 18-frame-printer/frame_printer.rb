# Ruby program to print words in a frame
# Written by M.V.Harish Kumar on 01-02-2025

print "Enter a string: "
words = gets.chomp.split
mlen = words.map(&:length).max

puts '*' * (mlen+4)
words.each do |word|
  puts "* #{word.ljust mlen} *"
end
puts '*' * (mlen+4)
