class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :image_set
  belongs_to :comments
  has_many :comments
end
