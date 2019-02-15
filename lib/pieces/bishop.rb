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