class Item < ApplicationRecord
    has_many :selected_items
    has_many :shopping_carts, through: :selected_items
    has_many :comments
    belongs_to :category


end
