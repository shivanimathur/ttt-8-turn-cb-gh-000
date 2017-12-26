def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} | "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} | "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} | "
end

def input_to_index(index)
  index.to_i - 1
end

def valid_move?(board, index)
  if index.between?(0, 8)
    if position_taken?(board, index)
      false
    else
      true
    end
  else
    false
  end
end

def position_taken? (board, index)
  if board[index] == "" || board[index] == " "
    false
  else
    true
  end
end

def move(board, index, symbol= "X")
  board[index] = "#{symbol}"
end

def turn()
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, symbol = "X")
  else
    turn()
  end
end
