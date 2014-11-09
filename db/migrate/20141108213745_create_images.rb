class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :file_name
      t.integer :flag
      t.belongs_to :image_set, index: true
      t.timestamps
    end
  end
end
