class Post < ActiveRecord::Base
  # auto linked to comments table

  has_many :comments
  # def albums
  #   []
  # end

  # def albums
  #   Album.where artist_id: @artist_id
  #   select * from albums where artist_id = @artist_id
  # end

end
