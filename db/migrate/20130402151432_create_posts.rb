class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :price
      t.string :access_key
      t.integer :category_id
      t.timestamps 
    end
  end
end
