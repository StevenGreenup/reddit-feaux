class Post < ActiveRecord::Base
  # auto linked to comments table
  validates :user_id, presence: true

  has_many :comments
  belongs_to :user

  def scorevote
    upvote - downvote
  end


  # def albums
  #   []
  # end

  # def albums
  #   Album.where artist_id: @artist_id
  #   select * from albums where artist_id = @artist_id
  # end

end
