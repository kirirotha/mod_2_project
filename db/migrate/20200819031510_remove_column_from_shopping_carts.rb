class RemoveColumnFromShoppingCarts < ActiveRecord::Migration[6.0]
  def change
    remove_column :shopping_carts, :user_id, :integer
    remove_column :shopping_carts, :total, :float
  end
end
