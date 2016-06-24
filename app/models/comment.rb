class Comment < ActiveRecord::Base
  # auto linked to albums table
  validates :post_id, presence: true
  belongs_to :post

  # def artist
  # end

end
