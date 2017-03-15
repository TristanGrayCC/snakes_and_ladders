class Players

  attr_accessor :square, :turn_order_number, :name

  def initialize(name, turn_order_number, square)
    @name = name
    @turn_order_number = turn_order_number
    @square = square
  end

end
