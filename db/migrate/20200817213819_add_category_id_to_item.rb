class AddCategoryIdToItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :category_id, :string
    remove_column :items, :catagory_id
    remove_column :items, :category
  end
end
