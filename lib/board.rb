class Board

    attr_accessor :cells

    def initialize(cells = Array.new(9, " "))
        @cells = cells
    end

    def reset!
        @cells = Array.new(9, " ")
    end

    def display
        puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
        puts "-----------"
        puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
        puts "-----------"
        puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
    end
  
    def position(num)
        @cells[num.to_i - 1]
    end

    def full?
        x_count = cells.count("X")
        o_count = cells.count("O")
        total = x_count + o_count
        if total == 9
            return true
        else
            false
        end
    end

    def turn_count
        x = cells.count("X")
        y = cells.count("O")
        x + y
    end

    def taken?(some_place)
        position(some_place) != " "
    end

    def valid_move?(move)
        !taken?(move) && (1..9).include?(move.to_i)
    end

    def update(input, player)
        cells[input.to_i-1] = player.token
    end
end