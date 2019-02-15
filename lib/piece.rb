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
    
    alias_method :inspect, :to_s
    alias_method :display, :to_s
    
    def to_s
        symbol.to_s
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

class Pawn < Piece

    include Stepable

    def symbol

        (super.to_s + "P").to_sym

    end

    def move_dirs


    end

    private

    def at_start_row?

    end

    def forward_dir

    end

    def forward_steps

    end

    def side_attacks

    end

end

class Knight < Piece

    include Stepable

    def symbol

         (super.to_s + "N").to_sym

    end

    protected

    def move_diffs

    end

end

class King < Piece

    include Stepable

    def symbol

         (super.to_s + "K").to_sym

    end

    protected

    def move_diffs

    end

end

class Bishop < Piece

    include Slideable

    def symbol

         (super.to_s + "B").to_sym

    end

    protected

    def move_dirs
        "dgy"
    end
 
end

class Rook < Piece

    include Slideable

    def symbol

         (super.to_s + "R").to_sym

    end

    protected

    def move_dirs

        "hzy"

    end

end

class Queen < Piece

    include Slideable

    def symbol

         (super.to_s + "Q").to_sym

    end

    protected

    def move_dirs

    end

end

class NullPiece < Piece

    include Singleton

    def initialize



    end

    def moves

    end

    def symbol

        :__

    end

end