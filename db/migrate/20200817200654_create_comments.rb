class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :item_id
      t.integer :user_id
      t.string :title
      t.string :content
      t.integer :rating

      t.timestamps
    end
  end
end
