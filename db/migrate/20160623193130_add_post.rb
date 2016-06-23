class AddPost < ActiveRecord::Migration
  def change
      create_table :posts do |t|
      t.string :user
      t.text :title
      t.text :body
      t.timestamps
    end
  end
end
