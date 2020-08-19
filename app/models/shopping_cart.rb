class ShoppingCart < ApplicationRecord
    has_many :selected_items
    has_many :items, through: :selected_items

    #validates :selected_items, presence: true

end
