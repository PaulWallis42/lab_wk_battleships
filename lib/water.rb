class Water
  attr_reader :shot

  def initialize
    @shot = false
  end

  def shoot
    @shot = true
    'MISS'
  end
end
