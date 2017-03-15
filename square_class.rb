class Square

  def initialize(number, type, move)
    @number = number
    @type = type
  end

  def effect
    if @type == "Snake"
      player.square -= move
      puts "SNAKE! #{player.square}"
    elsif @type == "Ladder"
      player.square += move
      puts "LADDER! #{player.square}"
    elsif @type == "Finish"
      "END GAME WILL CODE LATER"
    else return player(square)
    end
  end

end
