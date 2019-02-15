class Queen < Piece

    include Slideable

    def symbol

         (super.to_s + "Q").to_sym

    end

    protected

    def move_dirs

    end

end