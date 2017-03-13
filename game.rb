class World
  #make these objects accessible in other methods
  attr_accessor :rows, :columns, :cells

  #create a 2-D array
  def grid
    rows = []
    columns = []
    # @grid = Array.new(row){Array.new(column)} -removed to implement a clearer way to define cell from rows and columns
    @grid = Array.new(rows) do |row|
    Array.new(columns) do |column|
      Cell.new(column, row)
    end
  end
  end
end

class Cell
  #initialize a cell with x and y coordinates
  def initialize(x=3,y=3)
    #default as dead cell
    @alive = false
  end
  #each element in grid should represent a cell with x and y coordinates
  def cell
  end

  def alive
    self.cell == 1
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
