class AddColumnValorTotalToContrato < ActiveRecord::Migration[6.1]
  def change
    add_column :contratos, :valorTotal, :float
  end
end
