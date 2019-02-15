require "byebug"

module Slideable

    # attr_reader :HORIZONTAL_DIRS, :DIAGONAL_DIRS

    def moves

        dir = move_dirs
        i, j = self.pos
        positions = []

        if dir == "hzy"
            positions += horvert_positions(nil,1)
            positions += horvert_positions(nil,-1)
            positions += horvert_positions(1,nil)
            positions += horvert_positions(-1,nil)
        elsif dir == "dgy"
            #debugger
            positions += diag_positions(1,1)
            positions += diag_positions(-1,-1)
            positions += diag_positions(1,-1)
            positions += diag_positions(-1,1)
        end

        positions.reject {|el| el == self.pos}

    end


    private

    # HORIZONTAL_DIRS = :HORIZONTAL_DIRS
    # DIAGONAL_DIRS = :DIAGONAL_DIRS

    def move_dirs
    end

    def grow_unblocked_moves_in_dir(dx,dy)

    end

    def diag_positions(sign_i, sign_j)
        i, j = self.pos
        positions = []
            i += 1 * sign_i
            j += 1 * sign_j
        while self.board.empty_space?([i,j]) && ( (i >= 0 && i <= 7) && (j >= 0 && j <= 7) ) 
            positions << [i,j]
            i += 1 * sign_i
            j += 1 * sign_j
        end
        positions
    end

    def horvert_positions(sign_i, sign_j)
        i, j = self.pos
        positions = []
        # debugger
        i += 1 * sign_i unless sign_i.nil?
        j += 1 * sign_j unless sign_j.nil?
        while self.board.empty_space?([i,j]) && ( (i >= 0 && i <= 7) && (j >= 0 && j <= 7) ) 
            positions << [i,j]
            i += 1 * sign_i unless sign_i.nil?
            j += 1 * sign_j unless sign_j.nil?
        end
        positions
    end
    
end