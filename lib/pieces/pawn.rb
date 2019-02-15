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