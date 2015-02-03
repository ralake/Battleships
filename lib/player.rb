class Player

  attr_accessor :board

  def board
    @board
  end

  def receive_shot(coordinates)
    @board.shoot(coordinates)
  end

end