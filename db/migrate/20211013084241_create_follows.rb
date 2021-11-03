class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.references :virtual_user
      t.references :follower, foreign_key: { to_table: :virtual_users }

      t.timestamps

      t.index [:virtual_user_id, :follower_id], unique: true
    end
  end
end
