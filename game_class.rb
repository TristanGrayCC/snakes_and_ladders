class Game

def initialize(number, players, dice)
  @number = number
  @players = players
  @dice = dice
end

def start
  for player in @players
    player.square = 1
  end
  for player in @players
    player.turn_order_number = @dice.roll
  end
end

def turn
end

def finish
  for player in @players
    if player.square = 100
      return "You win!"
    end
  end
end

end
