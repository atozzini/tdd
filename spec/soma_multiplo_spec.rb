require 'spec_helper'

describe 'Soma Multiplos' do
  subject { SomaMultiplo.new }

  context 'retorna 23 quando o limite é 10 e os números sao 3 e 5' do
    it 'retorna soma igual a 23' do
      expect(subject.soma_multiplos(3, 5, 10)).to eq 23
    end
  end

  context 'não retorna 23 quando o limite é 10 e os números sao 2 e 6' do
    it 'retorna soma diferente de 23' do
      expect(subject.soma_multiplos(2 ,6, 10)).not_to eq 23
    end
  end
end
