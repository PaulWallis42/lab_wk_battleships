require 'cell'

describe Cell do
  let(:cell) { Cell.new }

  it 'has no content on creation' do
    expect(cell.content).to eq(nil)
  end

  it 'can take content' do
    cell.add_content(:ship)
    expect(cell.content).to eq(:ship)
  end

  it 'can be shot' do
    ship = double :ship, shoot: 'hit'
    cell.add_content(ship)
    cell.shoot
    expect(cell.shot).to eq(true)
  end

  it 'contents react to shot' do
    ship = double :ship, shoot: 'hit'
    cell.add_content(ship)
    expect(cell.shoot).to eq('hit')
  end
end
