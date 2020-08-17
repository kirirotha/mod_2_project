class CreateSelectedItems < ActiveRecord::Migration[6.0]
  def change
    create_table :selected_items do |t|
      t.integer :shopping_cart_id
      t.integer :item_id
      t.integer :quantity

      t.timestamps
    end
  end
end
