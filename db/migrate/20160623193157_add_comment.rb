class AddComment < ActiveRecord::Migration
  def change
      create_table :comments do |t|
      t.integer :post_id
      t.integer :user_id
      t.text :body
      t.integer :upvote, default: 0
      t.integer :downvote, default: 0

      t.timestamps
    end
  end
end
