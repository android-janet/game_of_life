class Game
  attr_accessor :world, :seeds

  #create a world with an array of seeds that will populate the grid in the game
  def initialize(world, seeds)
    seeds = []
  end

  def top_neighbor(cell)
    if cell(x,y)
    top_neighbor = grid[cell.y + 1][cell.x]
    end
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
