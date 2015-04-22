class Board
  attr_reader :content, :size

  def initialize(size)
    @content = []
    @size = size
  end

  def add_cell(cell)
    @content << cell
  end
end
