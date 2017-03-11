require './game'

describe Game do
  describe "Create a grid" do
    #context helps keep clear and well-organized tests
    context "When given x=4 and y=4" do
       it "Returns a 4x4 grid" do
         game = Game.new
         game.grid(4,4)
         puts game
       end
    end
  end
end
