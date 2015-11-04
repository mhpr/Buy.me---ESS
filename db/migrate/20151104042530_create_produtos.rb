class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.decimal :preco

      t.timestamps null: false
    end
  end
end
