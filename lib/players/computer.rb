module Players
    class Computer < Player
    

    def move(board)
        if board.valid_move?("5")
            go_here = "5"
        else
            picked_random = [2,4,6,8].sample
            if board.valid_move?(pick_random)
                go_here = picked_random
            else
                picked_different_random = [1,3,7,9].sample
                board.valid_move?(picked_different_random)
                go_here = picked_different_random
                 end
             end
         end
    end
end