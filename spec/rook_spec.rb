require 'Rook'

describe "Rook" do
  subject { Rook.new }

  it 'returns the correct points value' do
    rook_points = subject.points
    expect(rook_points).to be(5)
  end

  it 'returns the correct name' do
    rook_name = subject.name
    expect(rook_name).to eq('Rook')
  end

  it 'returns a point value greater than a pawn' do
    rook_points = subject.points
    expect(rook_points).to be > 1
  end
end