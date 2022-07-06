require 'rails_helper'

RSpec.describe Contrato, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  subject(:contrato) {described_class.new()}

  describe '#Verificação de juros' do
    context 'Verificado se há atraso na devolução do veículo' do
      data_prevista = Date.new(2022, 7, 4)
      data_entrega = Date.new(2022, 7, 4)

      data_entrega2 = Date.new(2022, 7, 5)
    
      it 'Não há atraso' do
        expect(contrato.atraso(data_prevista, data_entrega)).to eq(false)
        
      end

      it 'Há atraso' do
        expect(contrato.atraso(data_prevista, data_entrega2)).to eq(true)
        
      end

    end

    context 'Verificado dias de atraso' do
      contrato2 = Contrato.new()
      contrato2.dataFim = Date.new(2022, 07, 04)

      contrato3 = Contrato.new()
      contrato3.dataFim = Date.new(2022, 07, 05)
    
      it 'há atraso de um dia' do
        expect(contrato2.dias_atraso).to eq(1)
        
      end

      it 'Não há atraso na devolução' do
        expect(contrato3.dias_atraso).to eq(0)
        
      end


    end
  end
end
