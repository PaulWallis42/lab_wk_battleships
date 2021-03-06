class Ship
  attr_reader :size, :hits_received

  def initialize
    @size = 1
    @floating = true
    @hits_received = 0
  end

  def floating?
    @floating
  end

  def shoot
    @hits_received += 1
    @hits_received >= @size ? @floating = false : @floating = true
    'HIT!'
  end
end
