require './game'

describe Game do
  context "Grid" do
    before (:each) do
      @world = World.new
      @cell = Cell.new
    end

# make sure world methods respond to World class
    it "responds to grid method" do
      expect(@world).to respond_to(:grid)
    end

# make sure cell methods respond to Cell class
    it "responds to cell method" do
      expect(@cell).to respond_to(:cell)
    end

    it "responds to alive method" do
      expect(@cell).to respond_to(:alive)
    end

    it "responds to dead method" do
      expect(@cell).to respond_to(:dead)
    end

    it "creates a grid as an empty array of arrays" do
      @world.grid.each do |row|
        expect(row).to be_a(Array)
        row.each do |column|
          expect(column).to be_a(Array)
        end
      end
    end

    it "creates a cell" do
      expect(@cell).to be_an_instance_of(Cell)
    end

    it "create a game object" do
      @game = Game.new
      expect(@game).to be_an_instance_of(Game)
    end

    it "can determine a live cell" do
      expect(@cell.alive).to be false
    end

  end

  context "Game" do
    before (:each) do
      @world = World.new
      @cell = Cell.new
    end


  end
end
