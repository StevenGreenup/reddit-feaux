class Comment < ActiveRecord::Base
  # auto linked to albums table
  validates :post_id, presence: true
  validates :user_id, presence: true

  def scorevote
    upvote - downvote
  end


  belongs_to :post
  belongs_to :user
  # def artist
  # end

end
