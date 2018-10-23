# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #middle row
  [6, 7, 8], #bottom row
  [0, 3, 6], #left column
  [1, 4, 7], #middle column
  [2, 5, 8], #right column
  [0, 4, 8], #topleft to botright diag
  [2, 4, 6] #topright to botleft diag
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if board[token][combo[0]] == "X" and board[token][combo[1]] == "X" and board[token][combo[2]] == "X"
      return combo
    three_x = combo.all? do |token|
      board[token] == "X"
    end
    if three_x
      return true
    end
  end
  false
end