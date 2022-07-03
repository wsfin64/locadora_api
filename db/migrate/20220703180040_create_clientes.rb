class CreateClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cnh
      t.string :endereco
      t.string :telefone

      t.timestamps
    end
  end
end
