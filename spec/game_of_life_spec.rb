require './game_of_life'

describe "Game of Life" do
  context "World" do
    before (:each) do
      @world = World.new
      @cell = Cell.new
    end

    it "World class responds to methods" do
      expect(@world).to respond_to(:grid)
      expect(@world).to respond_to(:rows)
      expect(@world).to respond_to(:columns)
      expect(@world).to respond_to(:cells)
    end

    it "creates a grid as an array of arrays" do
      @world.grid.each do |row|
        expect(row).to be_a(Array)
        row.each do |column|
          expect(column).to be_a(Cell)
        end
      end
    end

    #checks if @world is of the World class
    it "creates a world object" do
      expect(@world).to be_an_instance_of(World)
    end

    #checks if @cell is of the Cell class
    it "creates a cell" do
      expect(@cell).to be_an_instance_of(Cell)
    end

    it ""do
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
