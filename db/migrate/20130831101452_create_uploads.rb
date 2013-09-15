class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :upload
      t.string :uploadable_type
      t.integer :uploadable_id
      t.timestamps
    end
  end
end
