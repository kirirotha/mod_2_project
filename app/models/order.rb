class Order < ApplicationRecord
    belongs_to :shopping_cart
    validates :name, :address, :city, :state, :zip, :cc, :ccexp, presence: true
end
