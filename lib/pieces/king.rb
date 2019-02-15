class King < Piece

    include Stepable

    def symbol

         (super.to_s + "K").to_sym

    end

    protected

    def move_diffs

    end

end