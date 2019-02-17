require "pieces/piece.rb"

    describe Piece do

        let(:board) {double("Board")}
        subject(:piece) {Piece.new(:black, board, [0,0])}

        describe "#initialize" do

            it "should set the piece's color, board, and position" do
                expect(piece.color).to eq(:black)
                expect(piece.board).to eq(board)
                expect(piece.position).to eq([0,0])
            end

            it "should raise an error if color is anything but :black or :white" do
                expect(Piece.new("banana",board,[0,0])).to raise_error(ArgumentError)
            end

            it "should raise an error if board is anything but a Board object" do
                expect(Piece.new(:black,[],[0,0])).to raise_error(ArgumentError)
            end

            it "should raise an error if position is not an array containing two integers" do
                expect(Piece.new(:black,board,"banana")).to raise_error(ArgumentError)
            end

        end

        describe "#to_s" do

            it "should return a string representation of the piece"

        end

        describe "#empty" do 

            it "should return true if the piece is the NullPiece"

            it "should return false otherwise"

        end

        describe "#valid_moves" do

            it "should return an array of all positions on the board the piece can legally move to"

        end

        describe "#symbol" do

            it "should return a symbol representation of the piece"

        end

    end