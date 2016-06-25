class AddPost < ActiveRecord::Migration
  def change
      create_table :posts do |t|
      t.integer :user_id
      t.text :title
      t.text :body
      t.timestamps
      t.integer :upvote, default: 0
      t.integer :downvote, default: 0
    end
  end
end
