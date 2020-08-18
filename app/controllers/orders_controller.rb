class OrdersController < ApplicationController
    def new
        @cart = ShoppingCart.find(session[:shopping_cart_id])
        if @cart.selected_items.empty?
            flash[:message] = "Your cart is empty"
            redirect_to shopping_cart_path(session[:shopping_cart_id])
        end
        @order = Order.new
    end

    def create
        @order = Order.new(order_params)


        session[shopping_cart_id:] = nil
    end

    private
    def order_params
        params.require(:order).permit(:name, :address, :city, :state, :zip, :cc, :ccexp, :user_id, :shopping_cart_id)
    end

end
