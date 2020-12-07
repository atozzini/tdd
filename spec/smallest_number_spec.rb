require 'spec_helper'

describe 'smallest number' do
  subject { SmallestNumber.new }

  context 'metodos' do
    describe '#calculate_smallest' do
      context 'when run the method' do
        it 'returns the smallest number divisible from 1 to 20' do
          expect(subject.calculate_smallest).to eq 0
        end
      end
    end
  end
end
