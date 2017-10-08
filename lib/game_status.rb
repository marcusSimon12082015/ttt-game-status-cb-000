# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]
def won?(board)
  #check if the board is empty
  board.any?{|i| i != " "}? false : true

  #check the wining combinations
  WIN_COMBINATIONS.each do |combination|
    win_index1 = combination[0]
    win_index2 = combination[1]
    win_index3 = combination[2]

    position1 = board[win_index1]
    position2 = board[win_index2]
    position3 = board[win_index3]

    if position1 == "X" && position2 == "X" && position3 = "X"
      return combination
  end
end
