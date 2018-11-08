WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Lower row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # Diagonal starts from top left corner
  [2,4,6]  # Diagonal starts from top right corner
]

def display_board(board_array)
  puts " #{board_array[0]} | #{board_array[1]} | #{board_array[2]} "
  puts "-----------"
  puts " #{board_array[3]} | #{board_array[4]} | #{board_array[5]} "
  puts "-----------"
  puts " #{board_array[6]} | #{board_array[7]} | #{board_array[8]} "
end

def input_to_index(user_input)
  user_index = user_input.to_i
  index = user_index - 1
  return index
end

def move(board_array, user_index, character = 'X')
  return board_array[user_index] = character
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    return true
  else
    return false
  end
end

def turn
  input = gets.strip
  index = input_to_index(input)
  valid_move?(board, index) ? move(board,index) && display_board(board) ? gets.strip
end
