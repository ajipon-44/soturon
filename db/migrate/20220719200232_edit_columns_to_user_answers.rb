class EditColumnsToUserAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :user_answers, :belonging, :string
    add_column :user_answers, :name, :string
    add_column :user_answers, :address, :string
    remove_column :user_answers, :image, limit: 1.megabyte
  end
end
