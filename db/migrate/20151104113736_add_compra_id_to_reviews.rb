class AddCompraIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :compra_id, :integer
    add_index  :reviews, :compra_id
  end
end
