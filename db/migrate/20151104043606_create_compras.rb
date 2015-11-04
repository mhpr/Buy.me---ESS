class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.string :cliente_cpf
      t.integer :protudo_id

      t.timestamps null: false
    end
  end
end
