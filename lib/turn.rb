def display_board(arr)
  puts " #{arr[0]} | #{arr[1]} | #{arr[2]} "
  puts "-----------"
  puts " #{arr[3]} | #{arr[4]} | #{arr[5]} "
  puts "-----------"
  puts " #{arr[6]} | #{arr[7]} | #{arr[8]} "
end

# code your input_to_index and move method here!
def input_to_index(value)
  return value.to_i - 1
end

def move(array, index, char = "X")
  array[index] = char
  return array
end

# code your #valid_move? method here
def valid_move?(board,index)
  if position_taken?(board,index)==FALSE
    if index>=0 && index<=8
      return TRUE
    else
      return FALSE
    end
  else
    return FALSE
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if (board[index] == " " || board[index] == ""|| board[index].nil?)
    return FALSE
  else
    return TRUE
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index) == FALSE
    puts "Invalid move. Please choose another position."
    input = gets.strip
    index
  else
    board = move(board,index,"X")
  end
  display_board(board)
end