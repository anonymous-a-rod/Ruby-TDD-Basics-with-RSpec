require 'player'

describe Player do
  subject { Player.new }

  it 'calculates the correct credits remaining' do
    subject.credits = 1.5
    subject.sub_credits(1.3)
    expect(subject.credits).to be_within(0.0001).of (0.19999)
  end

  it 'returns the correct value for the players active status' do
    subject.active = "YES"
    expect(subject.active).to be_truthy
  end

  it 'returns an error when sub_credits is passed a zero credit value' do
    subject.credits = 2
    expect {subject.sub_credits(0)}.to raise_exception(StandardError)
  end

end