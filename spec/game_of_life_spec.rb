require './game_of_life'

describe "Game of Life" do
  context "World" do
    before (:each) do
      @world = World.new
      @cell = Cell.new
    end

    it "respond to grid method" do
      expect(@world).to respond_to(:grid)
    end

    it "create a grid as an empty array of arrays" do
      @world.grid.each do |row|
        expect(row).to be_a(Array)
        row.each do |column|
          expect(column).to be_a(Cell)
        end
      end
    end

    it "create a world object" do
      expect(@world).to be_a(World)
    end

    it "create a cell" do
      expect(@cell).to be_an_instance_of(Cell)
    end

  end

  context "Cell" do

  end

  context "Game" do
    before (:each) do
      @world = World.new
      @cell = Cell.new
    end

    it "create a game object" do
      @game = Game.new
      expect(@game).to be_an_instance_of(Game)
    end

    #check game actions

  end
end
