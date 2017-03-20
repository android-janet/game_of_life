require './game_of_life'
require './world'
require './cell'

describe "Game of Life" do
  before (:each) do
    @world = World.new
    @cell = Cell.new
  end

  context "World" do

    it "World class responds to cells variable" do
      expect(@world).to respond_to(:cells)
    end

    it "World class responds to rows variable" do
      expect(@world).to respond_to(:rows)
    end

    it "World class responds to columns variable" do
      expect(@world).to respond_to(:columns)
    end

    it "World class responds to grid variable" do
      expect(@world).to respond_to(:grid)
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

    it "responds to alive variable" do
      expect(@cell).to respond_to(:alive)
    end

    it "responds to y variable" do
      expect(@cell).to respond_to(:y)
    end

    it "responds to x variable" do
      expect(@cell).to respond_to(:x)
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

    it "responds to world variable in Game class" do
      expect(@game).to respond_to(:world)
    end

    it "responds to seeds variable" do
      expect(@game).to respond_to(:seeds)
    end

    it "responds to top neighbor" do
      expect(@game).to respond_to(:top_neighbor)
    end

    it "creates a game object" do
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
