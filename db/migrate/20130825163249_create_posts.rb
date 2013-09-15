class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :page_title
      t.string :meta_description
      t.string :slug
      t.text :body
      t.datetime :published
      t.boolean :active


      t.timestamps
    end
    add_index :posts, :slug, unique: true
    add_index :posts, :user_id
  end
end
