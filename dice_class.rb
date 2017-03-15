class Dice

  def initialize(sides)
    @sides=sides
  end

  def roll
    rand(@sides)
  end

end
