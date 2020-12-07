require 'spec_helper'

describe 'smallest number' do
  subject { SmallestNumber.new }

  context 'metodos' do
    describe '#calculate_smallest' do
      context 'when run the method' do
        it 'returns the smallest number divisible from 1 to 10' do
          expect(subject.calculate_smallest(10)).to eq 2520
        end

        it 'returns the smallest number divisible from 1 to 20' do
          expect(subject.calculate_smallest(20)).to eq 232_792_560
        end
      end
    end
  end
end
