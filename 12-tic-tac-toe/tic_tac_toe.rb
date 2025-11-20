# Simple Tic tac toe game written in Ruby
# Written by M.V.Harish Kumar on 20-11-2025
BOARD = [1, 2, 3, 4, 'X', 6, 7, 8, 9]

def display_board
  puts "\t+-------+-------+-------+"
  puts "\t|       |       |       |"
  puts "\t|   #{BOARD[0]}   |   #{BOARD[1]}   |   #{BOARD[2]}   |"
  puts "\t|       |       |       |"
  puts "\t+-------+-------+-------+"
  puts "\t|       |       |       |"
  puts "\t|   #{BOARD[3]}   |   #{BOARD[4]}   |   #{BOARD[5]}   |"
  puts "\t|       |       |       |"
  puts "\t+-------+-------+-------+"
  puts "\t|       |       |       |"
  puts "\t|   #{BOARD[6]}   |   #{BOARD[7]}   |   #{BOARD[8]}   |"
  puts "\t|       |       |       |"
  puts "\t+-------+-------+-------+"
end

def enter_move(moves_remaining)
  print "Enter your move: "
  user_move = Integer(gets.chomp)

  if moves_remaining.include? user_move
    BOARD[user_move - 1] = 'O'
  else
    puts "Invalid input"
  end
rescue ArgumentError
  puts "Invalid input"
end

def make_list_of_free_fields
  BOARD.filter { |x| x.instance_of? Integer }
end

def victory_for(sign)
  (BOARD[..2] == [sign] * 3) || (BOARD[3..5] == [sign] * 3) ||
  (BOARD[6..8] == [sign] * 3) || (BOARD.values_at(0, 3, 6) == [sign] * 3) ||
  (BOARD.values_at(1, 4, 7) == [sign] * 3) || (BOARD.values_at(2, 5, 8) == [sign] * 3) ||
  (BOARD.values_at(0, 4, 8) == [sign] * 3) || (BOARD.values_at(2, 4, 6) == [sign] * 3)
end

def draw_move(moves_remaining)
  pc_move = moves_remaining.sample
  BOARD[pc_move - 1] = ?X
end

loop do
  moves_remaining = make_list_of_free_fields
  if moves_remaining.empty?
    puts "Draw"
    break
  end
  display_board
  enter_move moves_remaining
  if victory_for 'O'
    display_board
    puts "You win the match!"
    break
  end

  moves_remaining = make_list_of_free_fields
  if moves_remaining.empty?
    puts "Draw"
    break
  end
  draw_move moves_remaining
  if victory_for 'X'
    display_board
    puts "Computer wins the match!"
    break
  end
end
