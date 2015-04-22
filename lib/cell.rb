class Cell
  attr_reader :content

  def initialize
    @content = nil
  end

  def add_content(content)
    @content = content
  end
end
