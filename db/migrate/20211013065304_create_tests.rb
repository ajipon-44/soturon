class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.integer :real_user_id
      t.string :teacher
      t.integer :score
      t.timestamps
    end
  end
end
