class CreateGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :goods do |t|
      t.integer :virtual_user_id
      t.integer :post_id
      t.timestamps
    end
  end
end
