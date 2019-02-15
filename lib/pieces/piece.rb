require "singleton"
require_relative "slideable.rb"
require_relative "stepable.rb"

class Piece

    attr_accessor :color, :board, :pos
    
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end
    
    def to_s
        symbol.to_s
    end

    def inspect
        self.to_s
    end

    def display
        self.to_s
    end


    def empty?

    end

    def valid_moves
        moves = self.moves
        moves.each {}#check if move is legal based on board state
    end

    # def pos=(val)

    # end

    def symbol

        return :W if color == :white
        return :B if color == :black

    end

    private

    def move_into_check?(end_pos)

    end


end