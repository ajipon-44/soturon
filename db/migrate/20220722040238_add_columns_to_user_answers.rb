class AddColumnsToUserAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :user_answers, :result_belonging, :string
    add_column :user_answers, :result_name, :string
    add_column :user_answers, :result_address, :string
  end
end
