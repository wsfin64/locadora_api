class AddColumnDataDevolucaoToContrato < ActiveRecord::Migration[6.1]
  def change
    add_column :contratos, :dataDevolucao, :date
  end
end
