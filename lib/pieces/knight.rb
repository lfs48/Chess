class Knight < Piece

    include Stepable

    def symbol

         (super.to_s + "N").to_sym

    end

    protected

    def move_diffs

    end

end