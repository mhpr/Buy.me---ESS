# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151104131930) do

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compras", force: :cascade do |t|
    t.string   "cliente_cpf"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "produto_id"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string   "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.decimal  "preco"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "funcionario_id"
  end

  add_index "produtos", ["funcionario_id"], name: "index_produtos_on_funcionario_id"

  create_table "reviews", force: :cascade do |t|
    t.text     "conteudo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "compra_id"
    t.datetime "sent_on"
  end

  add_index "reviews", ["compra_id"], name: "index_reviews_on_compra_id"

  create_table "tags", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "produto_id"
  end

  add_index "tags", ["produto_id"], name: "index_tags_on_produto_id"

end
