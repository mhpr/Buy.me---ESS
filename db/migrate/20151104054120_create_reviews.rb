class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.datetime :data
      t.text :conteudo

      t.timestamps null: false
    end
  end
end
