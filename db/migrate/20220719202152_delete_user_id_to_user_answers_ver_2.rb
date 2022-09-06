class DeleteUserIdToUserAnswersVer2 < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_answers, :user_id, :string
  end
end
