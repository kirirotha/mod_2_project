class SelectedItemsController < ApplicationController
    before_action :set_cart, only: [:create, :destroy]

    def create
        @new_item = SelectedItem.new(item_id: params[:item][:item_id], shopping_cart_id: session[:shopping_cart_id], quantity: params[:item][:quantity])        
        @new_item.save 
        redirect_to shopping_cart_path(session[:shopping_cart_id])
    end

    def destroy
        @cart_item = SelectedItem.find(params[:id]) 
        @cart_item.destroy
        redirect_to shopping_cart_path(session[:shopping_cart_id])
    end

end
