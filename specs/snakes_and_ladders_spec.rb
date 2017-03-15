require('minitest/autorun')
require('minitest/rg')

require_relative('../dice_class')
require_relative('../game_class')
require_relative('../players_class')
require_relative('../square_class')

class TestGame < MiniTest::Test

  def setup
    @dice1 = Dice.new(1..6)
    @snake17 = Square.new(17, "Snake",10)
    @snake54 = Square.new(54, "Snake",20)
    @snake62 = Square.new(62, "Snake",43)
    @snake64 = Square.new(64, "Snake",4)
    @snake87 = Square.new(87, "Snake",63)
    @snake93 = Square.new(93, "Snake",20)
    @snake95 = Square.new(95, "Snake",20)
    @snake99 = Square.new(99, "Snake",21)
    @ladder4 = Square.new(4, "Ladder",10)
    @ladder9 = Square.new(9, "Ladder",12)
    @ladder20 = Square.new(20, "Ladder",18)
    @ladder28 = Square.new(28, "Ladder",56)
    @ladder40 = Square.new(40, "Ladder",19)
    @ladder51 = Square.new(51, "Ladder",16)
    @ladder63 = Square.new(63, "Ladder",18)
    @ladder71 = Square.new(71, "Ladder",20)
    @finish_square = Square.new(100,"Finish",0)
    @player1 = Players.new("Tristan",@turn1,1)
    @player2 = Players.new("Allegra",@turn2,1)
  end

  def test_roll
    result = @dice1.roll
    included = (1..6).include?(result)
    assert_equal(true,included)
  end

  def test_snake
    assert_equal(@snake17.effect,"something")
  end

end
