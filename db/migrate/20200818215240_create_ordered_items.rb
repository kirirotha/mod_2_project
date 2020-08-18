class CreateOrderedItems < ActiveRecord::Migration[6.0]
  def change
    create_table :ordered_items do |t|
      t.integer :order_id
      t.integer :selected_item_id

      t.timestamps
    end
  end
end
