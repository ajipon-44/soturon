class AddVirtualUserIdToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :virtual_user_id, :integer
  end
end
