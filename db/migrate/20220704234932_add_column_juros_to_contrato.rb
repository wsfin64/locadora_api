class AddColumnJurosToContrato < ActiveRecord::Migration[6.1]
  def change
    add_column :contratos, :juros, :float
  end
end
