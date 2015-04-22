require 'player'

describe Player do
  let(:player) { Player.new('Paul', :board) }

  it 'can have a name' do
    expect(player.name).to eq('Paul')
  end

  it 'can have a board' do
    expect(player.board).to eq(:board)
  end
end
