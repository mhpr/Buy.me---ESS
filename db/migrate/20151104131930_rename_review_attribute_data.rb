class RenameReviewAttributeData < ActiveRecord::Migration
  def change
    remove_column :reviews, :data
    add_column :reviews, :sent_on, :datetime
  end
end
