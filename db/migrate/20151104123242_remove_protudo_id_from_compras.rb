class RemoveProtudoIdFromCompras < ActiveRecord::Migration
  def change
    remove_column :compras, :protudo_id
    add_column  :compras, :produto_id, :integer
  end
end
