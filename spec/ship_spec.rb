require 'ship'

describe Ship do
  it 'has a size' do
    expect(subject.size).to eq(1)
  end

  it 'is floating on creation' do
    ship = Ship.new
    expect(ship.floating?).to eq(true)
  end

  it 'has not been hit on creation' do
    ship = Ship.new
    expect(ship.hits_received).to eq(0)
  end

  it 'can be hit' do
    subject.hit
    expect(subject.hits_received).to eq(1)
  end

  it 'sinks if hit' do
    subject.hit
    expect(subject.floating?).to eq(false)
  end
end
