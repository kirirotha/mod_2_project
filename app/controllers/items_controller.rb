class ItemsController < ApplicationController
before_action :set_item, only:[:show, :edit, :update, :destroy]
before_action :set_cart
before_action :cart_count


    def index
        @items = Item.all
    end

    def show
        
        if session[:user_id] == nil
            redirect_to login_path
        else
            @comment = Comment.new
        end
        @comment
    end

    def new
        @item = Item.new
        @cat = Category.all

        # if session[:user_id] == nil
        #     redirect_to login_path
        # else
        #     @comment = Comment.new(params_comment)
        # end

    end

    def create
        @item = Item.new(post_params)
        @cat = Category.all
        @item.save
        redirect_to item_path(@item)
    end

    private

    # def comment_params
    #     params.require(:comment).permit(:item_id, :user_id, :title, :content, :rating)
    # end

    def set_item
        @item = Item.find(params[:id])
    end

    def post_params
        params.require(:item).permit(:name, :des, :image_url, :category_id,:price)
    end

    

end
