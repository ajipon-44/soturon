class AddDisplayFlagToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :display_flag, :integer
  end
end
