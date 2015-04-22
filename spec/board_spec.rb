require 'board'

describe Board do
  let(:board) { Board.new(1) }

  it 'can be given a size on creation' do
    expect(board.size).to eq(1)
  end

  it 'has no content on creation' do
    expect(board.content).to eq([])
  end

  it 'can take content in the form of a cell' do
    board.add_cell(:cell)
    expect(board.content).to eq([:cell])
  end
end
