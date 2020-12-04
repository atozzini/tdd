require 'spec_helper'

describe 'Sequência de Fibonatti' do
  subject { SequenciaFibonacci.new }

  context 'metodos' do
    describe '#gera_fibonacci' do
      context 'quando o limite é menor que 4_000_000' do
        let(:sequencia_10_primeiros) { [1, 2, 3, 5, 8, 13, 21, 34, 55, 89] }

        it 'retorna os 10 primeiros' do
          expect(subject.gera_fibonacci(1, 2, 50).first(10)).to eq sequencia_10_primeiros
        end

        it 'não retorna array vazio' do
          expect(subject.gera_fibonacci(1, 2, 50)).not_to be_nil
        end
      end

      context 'quando o limite é maior que 4_000_000' do
        let(:mensagem) { 'O limite é 4.000.000' }

        it 'retorna uma string' do
          expect(subject.gera_fibonacci(1, 2, 4_000_001)).to eq mensagem
        end
      end
    end

    describe '#soma_fibonacci' do
      context 'retorna soma da sequencia de fibonatti dos valores pares até 50' do
        let(:valor_da_soma) { 26658145586 }

        it 'retorna valor da soma até 50' do
          expect(subject.soma_fibonacci(1, 2, 50)).to eq valor_da_soma
        end
      end
    end
  end
end
