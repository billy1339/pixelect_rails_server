class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.belongs_to :imageSet, index: true
      t.timestamps
    end
  end
end
