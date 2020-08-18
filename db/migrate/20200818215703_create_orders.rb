class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :shopping_cart_id
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :cc
      t.string :ccexp

      t.timestamps
    end
  end
end
