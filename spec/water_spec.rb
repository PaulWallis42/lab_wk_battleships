require 'water'

describe Water do
  let(:water) { Water.new }

  it 'is not shot on creation' do
    expect(water.shot).to eq(false)
  end

  it 'can be shot' do
    water.shoot
    expect(water.shot).to eq(true)
  end
end
