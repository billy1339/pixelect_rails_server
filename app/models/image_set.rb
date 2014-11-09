class ImageSet < ActiveRecord::Base
  belongs_to :user
  has_many :images
  has_many :comments
  has_many :tags

  # def total_likes
  #   # this.total_likes =
  # end

end



