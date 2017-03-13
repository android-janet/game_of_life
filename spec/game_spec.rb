require './game'

describe Game do
  context "Grid" do
    before (:each) do
      @world = World.new
      @cell = Cell.new
    end

    it "responds to grid method" do
      expect(@world).to respond_to(:grid)
    end

    it "responds to cell method" do
      expect(@world).to respond_to(:cell)
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
      end
    end

    it "finds a cell" do
      expect(@world.grid(3,3)).to be_a(Cell)
    end


  end
end
