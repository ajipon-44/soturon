class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.references :post
      t.references :reply, foreign_key: { to_table: :posts }

      t.timestamps

      t.index [:post_id, :reply_id], unique: true
    end
  end
end
