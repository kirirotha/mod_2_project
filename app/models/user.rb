class User < ApplicationRecord
    has_many :shopping_carts
    has_many :selected_items, through: :shopping_carts
    has_many :comments

    has_secure_password

    validates :username, :age, :email, :password, presence: true
    validates :username, :email, uniqueness: true
    

end
