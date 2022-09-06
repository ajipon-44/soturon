class EditColumnsToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :belonging, :string
    add_column :answers, :name, :string
    add_column :answers, :address, :string
    remove_column :answers, :danger_level, :integer
    remove_column :answers, :virtual_user_id, :integer
  end
end
