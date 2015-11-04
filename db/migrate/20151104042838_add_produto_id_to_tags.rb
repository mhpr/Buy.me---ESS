class AddProdutoIdToTags < ActiveRecord::Migration
  def change
    add_column :tags, :produto_id, :integer
    add_index  :tags, :produto_id
  end
end
