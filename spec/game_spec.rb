require 'game'

describe Game do
  let(:game) { Game.new }

  it 'can take two players' do
    game.add_player1(:player1)
    game.add_player2(:computer)
    expect(game.player1).to eq(:player1)
    expect(game.player2).to eq(:computer)
  end

  it 'is not ready until it has two players' do
    game.add_player1(:player1)
    expect { game.ready }.to raise_error 'Need two players'
  end
end
