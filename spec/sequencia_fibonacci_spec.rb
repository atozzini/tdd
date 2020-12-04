require 'spec_helper'

describe 'Sequência de Fibonatti' do
  subject { SequenciaFibonacci.new }

  context 'retorna os 10 primeiros números iguais a [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]' do
    let(:squencia_10_primeiros) { [1, 2, 3, 5, 8, 13, 21, 34, 55, 89] }

    it 'retorna os 10 primeiros' do
      expect(subject.gera_fibonacci(1, 2).first(10)).to eq squencia_10_primeiros
    end

    it 'não retorna array vazio' do
      expect(subject.gera_fibonacci(1, 2)).not_to be_nil
    end
  end

  context 'retorna soma da sequencia de fibonatti até 4_000_000' do
    let(:valor_da_soma) { 0 }

    it 'retorna valor da soma' do
      expect(subject.soma_fibonacci).to eq valor_da_soma
    end
  end
end
