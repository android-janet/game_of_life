# require 'Matrix'

# livecell = 1
# deadcell = 0

#prints as a matrix - multidimensional array
# m1 = Matrix[[0,1,0,0,0], [1,0,0,1,1], [1,1,0,0,1], [0,1,0,0,0], [1,0,0,0,1]]
# m1.to_a.each {|r| puts r.inspect}

class Game
  #create the multidimensional array
  def grid(x,y)
    x = []
    y = []
    #For each x row, create y column.
    Array.new(x).map!{Array.new(y)}
  end
end
