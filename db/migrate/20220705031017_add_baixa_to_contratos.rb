class AddBaixaToContratos < ActiveRecord::Migration[6.1]
  def change
    add_column :contratos, :baixa, :boolean, default: true
  end
end
