class CreateContratos < ActiveRecord::Migration[6.1]
  def change
    create_table :contratos do |t|
      t.date :dataInicio
      t.date :dataFim
      t.float :valor
      t.references :cliente, null: false, foreign_key: true
      t.references :veiculo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
