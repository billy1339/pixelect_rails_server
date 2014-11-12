class Image < ActiveRecord::Base
  belongs_to :image_set
  has_many :likes
  # mount_uploader :image_file, ImageUploader
end
