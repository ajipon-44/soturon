class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :virtual_user_id
      t.text :body
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4
      t.date :date
      t.integer :good
      t.integer :retweet
      t.integer :quote_tweet
      t.timestamps
    end
  end
end
