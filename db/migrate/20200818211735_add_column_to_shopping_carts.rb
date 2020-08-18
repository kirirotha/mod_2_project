class AddColumnToShoppingCarts < ActiveRecord::Migration[6.0]
  def change
    remove_column :shopping_carts, :total
    add_column :shopping_carts, :total, :float
  end
end
