require 'spec_helper'

describe 'Soma Multiplos' do
  subject { SomaMultiplo.new }

  context 'retorna 23 quando o limite é 10 e os números sao 3 e 5'
  it 'retorna soma igual a 23' do
    expect(subject.soma_multiplos(3, 5, 10)).to eq 23
  end
end
