require './game_of_life'

describe "Game of Life" do
  before (:each) do
    @world = World.new
    @cell = Cell.new
  end

  context "World" do

    it "World class responds to methods" do
      expect(@world).to respond_to(:grid)
      expect(@world).to respond_to(:rows)
      expect(@world).to respond_to(:columns)
      expect(@world).to respond_to(:cells)
    end

    #checks if @world is of the World class
    it "creates a world object" do
      expect(@world).to be_an_instance_of(World)
    end

    it "creates a grid as an array of arrays" do
      @world.grid.each do |row|
        expect(row).to be_a(Array)
        row.each do |column|
          expect(column).to be_a(Cell)
        end
      end
    end

    #checks if @cell is of the Cell class
    it "creates a cell" do
      expect(@cell).to be_an_instance_of(Cell)
    end

  end

  context "Cell" do

    it "responds to methods" do
      expect(@cell).to respond_to(:x)
      expect(@cell).to respond_to(:y)
      expect(@cell).to respond_to(:alive)
    end

    it "creates a dead cell by default" do
      expect(@cell.alive).to be false
    end

  end

  context "Game" do
    before (:each) do
      @game = Game.new(@world, @seeds)
      @seeds = []

    end

    it "responds to methods" do
      expect(@game).to respond_to(:world)
      expect(@game).to respond_to(:seeds)
      expect(@game).to respond_to(:top_neighbor)
    end

    it "create a game object" do
      expect(@game).to be_an_instance_of(Game)
    end

    it "creates a world object" do
      expect(@world).to be_an_instance_of(World)
    end

    it "ensures seeds is an array" do
      expect(@seeds).to be_a(Array)
    end

    it "populates a world with seeds" do
      @seeds = [[1,0,0], [1,0,1], [0,1,1]]
      @game = Game.new(@world, @seeds)
      expect(@world.grid[1][1]).to be_alive
    end


  end
end
