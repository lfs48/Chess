require_relative "piece.rb"

class Board

    class IllegalMoveError < StandardError; end

    attr_accessor :rows

    def initialize
        @rows = Array.new(8) {Array.new(8)}
        @sentinel = NullPiece.instance
        populate
    end

    def [](pos)
        row, column = pos[0], pos[1]
        rows[row][column]
    end

    def []=(pos,val)
        row, column = pos[0], pos[1]
        rows[row][column] = val
        return val
    end

    def move_piece(color, start_pos, end_pos)
        if valid_pos?(start_pos) && valid_pos?(end_pos)
            self[start_pos], self[end_pos] = sentinel, self[start_pos]
            #debugger
            self[end_pos].pos = end_pos
        end
      
    end 

    def valid_pos?(pos)
        true
    end

    def empty_space?(pos)
        self[pos].is_a?(NullPiece)
    end


    def add_piece(piece, pos)

    end

    def checkmate?(color)

    end
        
    def in_check?(color)

    end

    def pieces

    end

    def dup

    end

    def move_piece!(color, start_pos, end_pos)

    end
    
    private

    attr_accessor :sentinel


    def fill_back_row(color)
        if color == :white
            pieces = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]
            i = 7
        elsif color == :black
            pieces = [Rook, Knight, Bishop, King, Queen, Bishop, Knight, Rook]
            i = 0
        end
        j = 0
        pieces.each do |piece|
            pos = [i,j]
            self[pos] = piece.new(color, self, pos)
            j += 1
        end
    end

    def fill_pawn_row(color)
        if color == :white
            i = 6
        elsif color == :black
            i = 1
        end
        j = 0
        8.times do
            pos = [i,j]
            self[pos]= Pawn.new(color, self, pos)
            j += 1
        end
    end

    def populate

        (2..5).to_a.each do |i|
            (0..7).to_a.each { |j| self[[i, j]] = sentinel } 
        end

        fill_back_row(:black)
        fill_back_row(:white)
        fill_pawn_row(:black)
        fill_pawn_row(:white)
    end


end