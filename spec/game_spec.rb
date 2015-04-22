require 'game'

describe Game do
  let(:game) { Game.new(:player1, :player2) }

  it 'can take two players' do
    expect(game.player1).to eq(:player1)
  end

  it 'starts with player 1' do
    expect(game.turn).to eq(:player1)
  end

  it 'alternates the players turn' do
    game.change_turn
    expect(game.turn).to eq(:player2)
  end
end
