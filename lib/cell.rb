class Cell
  attr_reader :content, :shot

  def initialize
    @content = nil
    @shot = false
  end

  def add_content(content)
    @content = content
  end

  def shoot
    @shot = true
    @content.shoot
  end
end
