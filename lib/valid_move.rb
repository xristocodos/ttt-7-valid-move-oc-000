# code your #valid_move? method here
def valid_move?(board, posn_str, team = "X")
  posn = posn_str.to_i
  posn -= 1
  if ((posn.between?(0,8)) && !(position_taken?(board,posn)))
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  spot = board[position]
  if((spot == " ") || (spot == "") || (spot == nil))
    return false
  elsif ((spot == "X") || (spot == "O"))
    return true
  end
end
