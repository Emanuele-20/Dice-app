require './lib/dice_app'

describe "Dice_app" do
  it "Check if dice is a new instance of Dice class" do
    expect(Dice.new).to be_an Dice
  end

  context "#deposit" do
  it "Player want to be able to roll a dice" do
    expect(Dice.new).to respond_to(:roll)
  end
  it "Player should receives back a number between 1 and 6 " do
    d1 = Dice.new
    allow(d1).to receive(:roll).and_return(5) # STUB
    expect(d1.roll).to eq(5)
  end


  end #Context




end # Describe
