require 'ship'

describe Ship do
  let(:ship) { Ship.new }

  it 'has a size' do
    expect(ship.size).to eq(1)
  end

  it 'is floating on creation' do
    expect(ship.floating?).to eq(true)
  end

  it 'has not been hit on creation' do
    expect(ship.hits_received).to eq(0)
  end

  it 'can be shot' do
    ship.shoot
    expect(ship.hits_received).to eq(1)
  end

  it 'sinks if hit' do
    ship.shoot
    expect(ship.floating?).to eq(false)
  end
end
