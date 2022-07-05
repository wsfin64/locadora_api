class Contrato < ApplicationRecord
  belongs_to :cliente
  belongs_to :veiculo

  def registrar_devolucao
    
    hoje = Date.today

    self.dataDevolucao = hoje
    
    self.juros = calcular_juros

    #self.valorTotal = calcular_valor_total

    puts "VALOR TOTAL ANTES DO JUROS #{self.valorTotal}"

    puts "TOTAL JUROS #{self.juros}"

    
    if dias_atraso > 0
      total_final = self.valorTotal + (dias_atraso * self.valor) + self.juros
      self.valorTotal = total_final
    end

    puts "VALOR TOTAL DEPOIS DO JUROS #{self.valorTotal}"

    self.save
    
  end

  def calcular_juros
    hoje = Date.today
    diferenca = (hoje - self.dataFim).to_i

    if diferenca > 0
      multa = (0.05 * self.valor) * diferenca
      
      return multa
    end
    
    multa = 0
    return multa
  end

  def calcular_valor_total
    valor_diarias = (self.dataFim - self.dataInicio) * self.valor
    self.valorTotal = valor_diarias
    self.juros = 0.0
    self.save
    return valor_diarias
  end

  def dias_atraso
    hoje = Date.today
    diferenca = (hoje - self.dataFim).to_i

    return diferenca
  end


end
