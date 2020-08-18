class ShoppingCartsController < ApplicationController
    before_action :cart_items, only: [:show]

    def index
    end
  
    def show 
        @cart = ShoppingCart.find(session[:shopping_cart_id])
        @cart.total = total
        @cart.save
    end

    private

    def cart_items
        @cart_items = SelectedItem.all.select do |select_item| 
            select_item.shopping_cart_id == session[:shopping_cart_id]
        end
    end

    def total
        total = 0
        @cart_items.each do |item|
            total += (item.item.price*item.quantity)
        end
        total.round(2)
    end


end
