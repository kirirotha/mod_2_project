class AddCategoryToItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :category, :string
    remove_column :items, :catagory
  end
end
