class Game

def initialize(number, players, dice, special_squares)
  @number = number
  @players = players
  @dice = dice
  @special_squares = special_squares
end

def start
  for player in @players
    player.square = 1
  end
  @players.shuffle!
  game.play
end

def turn
  roll = @dice.roll
  @players[0].square += roll
  for special_square in @special_squares
    if special_square.number = player[0].square
      player[0].square += special_square.move
      if special_square.move < 0
        puts "SNAKE!"
      elsif special_square.move > 0
        puts "LADDER!"
      end
      puts "You have been moved #{special_square.move} squares."
      puts "#{player[0].square}"
    end
  end
  @players.rotate!
end

def play
  until @players[0].square >= 100
    game.turn
  end
  puts "Congratulations, #{@players[0].name}, you win!"
end

# def finish
#   for player in @players
#     if player.square = 100
#       return "You win!"
#     end
#   end
# end

end
