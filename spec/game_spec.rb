require './game'

describe Game do
  before (:each) do
    @world = World.new
  end

  it "responds to grid method" do
    expect(@world).to respond_to(:grid)
  end

  it "responds to cell method" do
    expect(@world).to respond_to(:cell)
  end

  it "responds to alive method" do
    expect(@world).to respond_to(:alive)
  end

  it "responds to dead method" do
    expect(@world).to respond_to(:dead)
  end

  it "creates an empty array of arrays" do
    expect(@world.grid(5,5)).to be_a(Array)
  end

  



end
