require_relative 'piece'

class Board
  
  def initialize
    @board = Array.new(8){Array.new(8, @piece)}
    @board[4][4] = Piece.new
  end
  
  def move_piece(start_pos, end_pos)
    #begin?
    if self[start_pos].nil?
      raise ReferenceError.new "Position has no piece"
    # elsif !@piece.valid_moves
    #   raise "Piece cannot be moved to this position"
    else
      self[end_pos] = self[start_pos]
      self[start_pos] = nil
    end
  end 
  
  def [](pos)
    row, col = pos
    @board[row][col]
  end
  
  def []=(pos, new_val)
    row, col = pos
    @board[row][col] = new_val
  end
end