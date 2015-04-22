require 'water'

describe Water do
  it 'contains water on creation' do
    expect(subject.water).to eq(true)
  end
end
