class Dice 

  attr_accessor :store # now is possible to use in rspec

  def initialize
    @store = []
  end

  def roll
    @store << random_number
  end

  def random_number
    rand(1..6)
  end

end
