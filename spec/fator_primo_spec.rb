require 'spec_helper'

describe 'fator primo' do
  subject { FatorPrimo.new }

  context 'metodos' do
    describe '#maior_fator_primo' do
      context 'quando foi informado um valor' do
        it 'retorna o maio número primo' do
          expect(subject.maior_fator_primo(13195)).to eq 29
        end
      end

      context 'quando não foi informado um valor' do
        let(:mensagem_erro) { 'Deve ser informado um valor para o cálculo' }

        it 'retorna uma string' do
          expect(subject.maior_fator_primo(nil)).to eq mensagem_erro
        end
      end
    end
  end
end
