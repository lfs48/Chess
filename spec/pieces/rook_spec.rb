require "pieces/rook.rb"

describe Slideable do

    let(:sentinel) {double("sentinel", :empty => true)}
    let(:board) {double("board", :[] => sentinel)}
    subject(:rook) {Rook.new(:black, board, [0,0])}

    describe "#moves" do

        it "should return an array of positions" do
            expect(rook.moves.all? do |el|
                el.is_a?(Array) &&
                el.length == 2 &&
                el[0].is_a?(Integer) &&
                el[1].is_a?(Integer)
                end).to be true
        end

        it "should stop at positions occupied by friendly pieces" do
            friendly_piece = double("piece", :empty => false, :color => :black)
            occ_board = double("board", :[] => friendly_piece)
            expect(rook.moves).to eq([])
        end

        it "should allow movement into the position of the first enemy piece in a given direction, but not past it" do
            enemy_piece = double("piece", :empty => false, :color => :white)
            occ_board = double("board", :[] => enemy_piece)
            expect(rook.moves).to match([ [0,1], [1,0] ])
        end

        it "should only include positions within the bounds of the board" do
            expect(rook.moves.any? do |pos|
                pos[0] > 7 ||
                pos[0] < 0 ||
                pos[1] > 7 ||
                pos[1] < 0
                end).to be false
        end

        it "should return all positions the piece can legally move to" do
            expected_moves = [
                [0,1],
                [0,2],
                [0,3],
                [0,4],
                [0,5],
                [0,6],
                [0,7],
                [1,0],
                [2,0],
                [3,0],
                [4,0],
                [5,0],
                [6,0],
                [7,0]
            ]
            expect(rook.moves).to match(expected_moves)
        end

    end

end