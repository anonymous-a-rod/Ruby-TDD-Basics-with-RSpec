require 'rspec'
require_relative 'cat'

RSpec.describe Cat do
  describe '#purr' do
    it 'it returns the string "Meow"!' do
      expect(subject.purr).to eql('Meow!')
    end
  end

  describe '#hungry?' do
    context 'hunger_level is greater than 5' do
      subject { described_class.new(hunger_level: 7) }

      it 'returns true' do
        expect(subject).to be_hungry
      end
    end

    context 'hunger_level is less than or equal to 5' do
      subject { described_class.new(hunger_level: 5) }

      it 'returns true' do
        expect(subject).to_not be_hungry
      end
    end
  end

  describe '#feed' do
    context 'is hungry' do
      subject { described_class.new(hunger_level: 8) }

      it 'returns true' do
        expect(subject).to be_hungry
      end

      it 'is fed and not hungry' do
        subject.feed
        expect(subject).to_not be_hungry
      end
    end
  end
end
