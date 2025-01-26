# Number guessing game in Ruby
# Written by M.V.Harish Kumar on 26-01-2025

rnum = rand(100) + 1
guesses = 0
guessed_nums = []

  puts "Number Guessing Game"
  puts "Guess the number which the computer thinks of"
  puts "The number is between 1 to 100"
  
loop do
  print "Enter your guess: "
  unum = gets.to_i

  puts "Guessed number is out of range" if (unum > 100 || unum < 1)
  case unum <=> rnum
    when -1
      puts "You've guessed low"
      guesses += guessed_nums.include?(unum) ? 0 : 1
    when 0
      guesses += 1
      puts "Yay! you've guessed the number in #{guesses} guesses"
      break
    when 1
      puts "You've guessed high"
      guesses += guessed_nums.include?(unum) ? 0 : 1
  end
  guessed_nums << unum if !guessed_nums.include?(unum)
end
