class CreateVirtualUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :virtual_users do |t|
      t.string :name
      t.string :sub_name
      t.text :catch_copy
      t.string :image
			t.string :belonging
			t.string :real_name
			t.string :address
      t.timestamps
    end
  end
end
