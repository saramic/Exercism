# Grains on a chessboard
class Grains
  class << self
    CHESS_BOARD_SQUARES = 64
    def square(number)
      raise ArgumentError if number < 1 || number > CHESS_BOARD_SQUARES
      2**(number - 1)
    end

    def total
      2**(CHESS_BOARD_SQUARES) - 1
    end
  end
end

module BookKeeping
  VERSION = 1
end
