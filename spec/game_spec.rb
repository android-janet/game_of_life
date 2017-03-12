require './game'

describe Game do

       it "responds to cell method" do
         game = Game.new
         expect(game).to respond_to(:cell)
       end

       it "responds to grid method" do
         game = Game.new
         expect(game).to respond_to(:grid)
       end

       it "creates an empty array of arrays" do
         game = Game.new
         expect(game.grid(0,0)).to be_a(Array)
       end

end
