class CreateImageSets < ActiveRecord::Migration
  def change
    create_table :image_sets do |t|
      t.text :voting_criteria
      t.integer :total_likes
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end



