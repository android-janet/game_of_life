
#Access 1st array. Then, access 1st element in that array.
# array1 = array[0][1]
#Check left neighbor.
#Check top neighbor.
#Check right neighbor.
#Check bottom neighbor.
#Check diagonal neighbors.
#get diagonal array
# puts (0..5).collect{ |e| array[e][e] }


class Game
  def initialize
    game = Game.new
  end
  #Create the grid of cells.
  def grid(x,y)
    x = []
    y = []
    #For each x row, generate a y column.
    Array.new(x).map{Array.new(y)}
  end


end
