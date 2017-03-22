class World
  #make these objects accessible in other methods
  attr_accessor :rows, :columns, :cells, :grid

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
  end
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
        cell
      end
    end
  end

  #create a method to randomly populate grid with 1s and 0s?

end
