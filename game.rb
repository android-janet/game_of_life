class World
  #make these objects accessible in other methods
  attr_accessor :rows, :columns, :cells, :grid

  #create a 2-D array
  def grid
    rows = []
    columns = []
    cells = []
    # @grid = Array.new(row){Array.new(column)} -removed to implement a clearer way to define cell from rows and columns
    @grid = Array.new(rows) do |row|
    Array.new(columns) do |column|
      cell = Cell.new(column, row)
    end
  end
  end

end

class Cell
  attr_accessor :alive, :x, :y

  #initialize a cell with x and y coordinates
  def initialize(x=0,y=0)
    @x = x
    @y = y
    #default as dead cell
    @alive = false
  end

  #check whether cell is dead or alive
  def dead?
    !alive
  end

  def alive?
    alive
  end

  #determine the cell's fate
  def die
    @alive = false
  end

  def live
    @alive = true
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
