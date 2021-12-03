class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :virtual_user_id
      t.integer :danger_level

      t.timestamps
    end
  end
end
