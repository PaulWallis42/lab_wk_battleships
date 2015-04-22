require 'cell'

describe Cell do
  it 'has no content on creation' do
    cell = Cell.new
    expect(cell.content).to eq(nil)
  end

  it 'can take content' do
    subject.add_content(:ship)
    expect(subject.content).to eq(:ship)
  end
end
