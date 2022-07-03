# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_03_185614) do

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "cnh"
    t.string "endereco"
    t.string "telefone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contratos", force: :cascade do |t|
    t.date "dataInicio"
    t.date "dataFim"
    t.float "valor"
    t.integer "cliente_id", null: false
    t.integer "veiculo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cliente_id"], name: "index_contratos_on_cliente_id"
    t.index ["veiculo_id"], name: "index_contratos_on_veiculo_id"
  end

  create_table "veiculos", force: :cascade do |t|
    t.string "fabricante"
    t.string "modelo"
    t.integer "ano"
    t.string "motor"
    t.string "placa"
    t.float "diaria"
    t.string "foto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "contratos", "clientes"
  add_foreign_key "contratos", "veiculos"
end
