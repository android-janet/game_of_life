class Cell
  attr_accessor :alive, :x, :y

  #initialize a cell with x and y coordinates
  def initialize(x=3,y=3)
    @x = x
    @y = y
    #default as dead cell
    @alive = false
  end

  # #check whether cell is dead or alive
  def dead?
    !alive
  end
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
