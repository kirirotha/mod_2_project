class Item < ApplicationRecord
    has_many :selected_items
    has_many :shopping_carts, through: :selected_items
    has_many :comments
    belongs_to :category

<<<<<<< HEAD
=======
    #validates :item_id, :user_id, :title, :content, :rating, presence: true
>>>>>>> 94c581d986a8f21c3afbcd61ecf83cae6bdfff23

end
