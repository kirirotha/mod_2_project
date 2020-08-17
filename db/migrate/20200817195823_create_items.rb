class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.float :price
      t.string :image_url
      t.integer :catagory_id
      t.string :des

      t.timestamps
    end
  end
end
