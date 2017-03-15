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
  @players.shuffle!
end

def turn
  #black magic players[0]

  @players.rotate!
end

def finish
  for player in @players
    if player.square = 100
      return "You win!"
    end
  end
end

end
