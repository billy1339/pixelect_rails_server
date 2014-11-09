class ImageSet < ActiveRecord::Base
  belongs_to :user
  has_many :images
  has_many :comments
end
