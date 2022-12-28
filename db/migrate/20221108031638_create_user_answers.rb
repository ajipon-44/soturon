class CreateUserAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_answers do |t|
			t.string :belonging
			t.string :real_name
			t.string :address
      t.timestamps
    end
  end
end
