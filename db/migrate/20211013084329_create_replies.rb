class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.references :post
      t.references :replied, foreign_key: { to_table: :posts }

      t.timestamps

      t.index [:post_id, :replied_id], unique: true
    end
  end
end
