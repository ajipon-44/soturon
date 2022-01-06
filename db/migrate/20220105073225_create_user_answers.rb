class CreateUserAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_answers do |t|
      t.string :user_id
      t.binary :image, limit: 1.megabyte

      t.timestamps
    end
  end
end
