class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :image

  # def get_total_likes
  #   this.total_likes = logic
  # end

end
