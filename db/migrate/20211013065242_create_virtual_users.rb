class CreateVirtualUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :virtual_users do |t|
      t.string :name
      t.string :sub_name
      t.string :password
      t.integer :follow
      t.integer :follower
      t.text :catch_copy
      t.text :image
      t.timestamps
    end
  end
end
