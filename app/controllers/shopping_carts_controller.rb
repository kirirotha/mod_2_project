class ShoppingCartsController < ApplicationController
    before_action :cart_items, only: [:show]

    def index
    end
  
    def show 
    end
    private
    def cart_items
        @cart_items = SelectedItem.all.select do |select_item| 
            select_item.shopping_cart_id == session[:shopping_cart_id]
        end
    end

end
