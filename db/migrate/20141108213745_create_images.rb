class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :fileName
      t.integer :flag
      t.belongs_to :ImageSet, index: true
      t.timestamps
    end
  end
end
