class UsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.integer :upvote, default: 0
      t.integer :downvote, default: 0

    end
  end
end
