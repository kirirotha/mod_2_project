class ItemsController < ApplicationController
before_action :set_item, only:[:show, :edit, :update, :destroy]

    def index
        @items = Item.all
    end

    def show
    end

    def new
        @item = Item.new
        @cat = Category.all
    end

    def create
        @item = Item.new(post_params)
        @cat = Category.all
        @item.save
        redirect_to item_path(@item)
    end

    private

    def set_item
        @item = Item.find(params[:id])
    end

    def post_params
        params.require(:item).permit(:name, :des, :image_url, :category_id,:price)
    end

    

end
