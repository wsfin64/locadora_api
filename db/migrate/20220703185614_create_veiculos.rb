class CreateVeiculos < ActiveRecord::Migration[6.1]
  def change
    create_table :veiculos do |t|
      t.string :fabricante
      t.string :modelo
      t.integer :ano
      t.string :motor
      t.string :placa
      t.float :diaria
      t.string :foto

      t.timestamps
    end
  end
end
