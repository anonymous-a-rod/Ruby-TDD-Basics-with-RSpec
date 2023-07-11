require 'rspec'
require_relative 'dog'

RSpec.describe Dog do
  # subject { Dog.new }

  describe '#bark' do
    it 'returns the string "Woof!"' do
      expect(subject.bark).to eql('Woof!')
    end
  end

  describe '#feed' do
    context 'when the dog is hungry' do
      subject { described_class.new(hunger_level: 7) }

      it 'is no longer hungry' do
        subject.feed
        expect(subject).to_not be_hungry
      end
    end
  end

  describe '#hungry' do
    context 'when hunger_level is more than 5' do
      subject { described_class.new(hunger_level: 7) }

      it 'returns true' do
        # dog = described_class.new(hunger_level: 7)
        # expect(dog.hungry?).to eql(true)
        expect(subject).to be_hungry
        # RSpec infers that it is a boolean
      end
    end

    context 'when hunger_level is 5 or less' do
      subject { described_class.new(hunger_level: 5) }
      it 'returns false' do
        # dog = described_class.new(hunger_level: 5)
        # expect(dog.hungry?).to eql(false)
        expect(subject).to_not be_hungry
      end
    end
  end
end
