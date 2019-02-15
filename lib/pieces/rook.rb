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