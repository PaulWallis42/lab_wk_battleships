class Game
  attr_reader :player1, :player2

  def initialize
    @player1 = false
    @player2 = false
  end

  def add_player1(player)
    @player1 = player
  end

  def add_player2(player)
    @player2 = player
  end

  def ready
    fail 'Need two players' if @player1 == false || @player2 == false
    true
  end
end
