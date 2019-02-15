require "board.rb"

describe Board do

    subject(:board) {Board.new}

    describe "#initialize" do

        it "create an 8x8 array as an instance variable" do
            expect(board.rows.length).to eq(8)
            expect(board.rows[0].length).to eq(8)
        end

        it "should store a reference to the NullPiece as an instance variable"

        it "should populate the board"

    end

    describe "#[]" do

        it "should accept a position (an array containing two numbers) as an argument"

        it "should return the piece at that position on the board"

    end

    describe "#[]=" do

        it "should accept a position (an array containing two numbers) and a piece as an argument"

        it "should reassign the piece at that position on the board to the input piece"

        it "should raise an error if we attempt to reassign the position to anything except a piece"

    end

    describe "#move_piece!" do

        it "should accept a color, a start position, and an end position as arguments"

        it "should raise an error if no piece is at the start position"

        it "should check if the move is legal by calling the piece's valid_moves method"

        context "the move is legal" do

            it "should reassign the start position to an empty piece"

            it "should reassgn the end position to the piece that was at the start position"

            it "should update the position of the piece that moved"

        end

        context "the move is not legal" do

            it "should raise an error"

        end

    end

    describe "#valid_pos?" do

        it "should accept a position (an array containing two numbers) as an argument"

        it "should raise a descriptive error if the input is not formatted correctly"

        it "should return false if the position lies outside the board"

        it "should return true if the position is within the bounds of the board"

    end

    describe "#add_piece" do

        it "should accept a piece and a position as an argument"

        it "should reassign that position on the board to the input piece"

    end

end