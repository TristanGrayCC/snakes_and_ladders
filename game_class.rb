class Game

attr_accessor :number, :players, :dice, :special_squares

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
  play()
end

def turn
  roll = @dice.roll
  puts "Your turn #{@players[0].name}"
  puts "#{@players[0].name} rolls #{roll}"
  @players[0].square += roll
  for special_square in @special_squares
    if special_square.square_number == @players[0].square
      @players[0].square += special_square.move
      puts "#{special_square.type}!"
      puts "You have been moved #{special_square.move} squares."
    end
  end
  puts "#{@players[0].name} is now on square #{@players[0].square}"
  input = gets.chomp
  puts input
end

def play
  until @players[0].square >= 100
    turn()
    @players.rotate!
  end
  puts "Congratulations, #{@players[0].name}, you win!"
end

end
