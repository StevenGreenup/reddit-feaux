class User < ActiveRecord::Base
  # auto linked to comments table

  has_many :comments
  has_many :posts
  # def albums
  #   []
  # end

  # def albums
  #   Album.where artist_id: @artist_id
  #   select * from albums where artist_id = @artist_id
  # end

end
