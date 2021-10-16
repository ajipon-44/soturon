class CreateRealUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :real_users do |t|
      t.string :name
      t.string :password
      t.integer :admin
      t.timestamps
    end
  end
end
