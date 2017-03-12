
#get diagonal array
# puts (0..5).collect{ |e| array[e][e] }
# x = [0]
# y = [0]
# array = Array.new(x).map{Array.new(y)}
# puts array
array = Array.new()
puts array

class Game
  #make these objects accessible
  attr_accessor :cell :grid
  #create a 2-D array
  def grid(x,y)
    x = []
    y = []
    Array.new(x){Array.new(y)}
  end

  #each element in grid should represent a cell with x and y coordinates
  def cell(x,y)
    # if @grid(x,y)
    #   @cell = grid[x][y]
    @grid.map{ |e| }
  end

end

class Neighbors
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
