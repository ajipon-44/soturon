class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.text :body
      t.text :image
      t.date :date
      t.integer :good
      t.integer :retweet
      t.integer :quote_tweet
      t.timestamps
    end
  end
end
