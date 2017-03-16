class World
  #make these objects accessible in other methods
  attr_accessor :rows, :columns, :cells, :grid

  #create a 2-D array
  def grid
    rows = []
    columns = []
    cells = []
    # @grid = Array.new(row){Array.new(column) } -removed to implement a clearer way to define cell from rows and columns
    @grid = Array.new(rows) do |row|
    Array.new(columns) do |column|
      #Create the 2 arrays. After we create an array of columns, we create a cell passing in a column and row. The cell is a product of row and column.
      cell = Cell.new(column, row)
      #We will need to be able to shovel a cell into an array of cells in the game.
      cells << cell
    end
    end
  end

  #create a method to randomly populate grid with 1s and 0s?

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

  # #check whether cell is dead or alive
  # def dead?
  #   !alive
  # end
  #
  # def alive?
  #   alive
  # end
  #
  # #determine the cell's fate
  # def die
  #   @alive = false
  # end
  #
  # def live
  #   @alive = true
  # end

end

class Game
attr_accessor :world, :seeds

  #create a world with an array of seeds that will populate the grid in the game
  def initialize(world, seeds)
    seeds = []
  end

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
