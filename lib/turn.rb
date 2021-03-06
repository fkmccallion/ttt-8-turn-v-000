def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    board[index] = "X"
    move(board, index)
  else
    turn(board)
  end
end

def move(board, index, token = "X")
    board[index] = token
    display_board(board)
end

def input_to_index(input)
  input = input.to_i
  index = input - 1
  return index
end

def valid_move?(board, index)
  if index.between?(0,8) && !(position_taken?(board,index))
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def display_board(board)
  pipesTop = " #{board[0]} | #{board[1]} | #{board[2]} "
  pipesMid = " #{board[3]} | #{board[4]} | #{board[5]} "
  pipesBot = " #{board[6]} | #{board[7]} | #{board[8]} "
  lines = "-----------"

  puts pipesTop
  puts lines
  puts pipesMid
  puts lines
  puts pipesBot
end
