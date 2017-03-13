
#get diagonal array
# puts (0..5).collect{ |e| array[e][e] }
# x = [0]
# y = [0]
# array = Array.new(x).map{Array.new(y)}
# puts array

class World
  #make these objects accessible in other methods
  attr_accessor :cell, :grid

  #create a 2-D array
  def grid
    row = []
    column = []
    @grid = Array.new(row){Array.new(column)}
  end
end

class Cell

    #each element in grid should represent a cell with x and y coordinates
    def cell(x,y)
      grid.map{ |e| e(x,y)}
    end

    def alive
      self.cell(x,y) == 1
    end

    def dead
      self.cell(x,y) == 0
    end


end

class Game
  def top_neighbor(cell)
    cell.y > 0
  end

  def bottom_neighbor(cell)
    cell.y < 0
  end

  def left_neighbor(cell)
    cell.x < 0
  end

  def right_neighbor(cell)
    cell.x > 0
  end

  def top_left_neighbor(cell)

  end

  def top_right_neighbor(cell)

  end

  def bottom_left_neighbor(cell)

  end

  def bottom_right_neighbor(cell)

  end

end
