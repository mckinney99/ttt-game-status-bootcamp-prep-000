# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.detect do |winning_array|
    win1 = winning_array[0]
    win2 = winning_array[1]
    win3 = winning_array[2]
    if board[win1] == "X" && board[win2] == "X" && board[win3] == "X"
      true
    elsif board[win1] == "O" && board[win2] == "O" && board[win3] == "O"
      true
    else
      false
    end
  end
end

def full?(board)
  full = board.all? do |index|
    index =="X" || index == "O"
  end
  return full
end

