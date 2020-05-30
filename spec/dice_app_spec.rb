require './lib/dice_app'

describe "Dice_app" do
  let(:d1) {Dice.new}

  it "Check if dice is a new instance of Dice class" do
    expect(d1).to be_an Dice
  end

  context "#roll" do
  it "Player want to be able to roll a dice" do
    expect(Dice.new).to respond_to(:roll)
  end
  it "Player should receives back a number between 1 and 6 " do
    # d1 = Dice.new # MOCK?
    allow(d1).to receive(:roll).and_return(5) # STUB
    expect(d1.roll).to eq(5)
  end
  end #Context

  it "Check if Dice.new can start with a default value" do
    d1 = Dice.new
    expect(d1.instance_variable_get(:@store)).to eq([])
  end

  it "Check if I can store results in array" do
    d1 = Dice.new
    allow(d1).to receive(:random_number).and_return(5)
    d1.roll
    expect(d1.store).to eq([5])

    # allow(:roll).to receive(:rand).and_return(5)
    # # allow(d1).to receive(:roll).and_return([5]) # STUB
    # d1.roll
    # expect(d1.store).to eq([5])
    # # expect(d1.instance_variable_get(:@store)).to eq([5])
  end






end # Describe
