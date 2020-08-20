class ItemsController < ApplicationController
before_action :set_item, only:[:show, :create, :new]
before_action :set_cart
before_action :cart_count


    def show
        set_item
        @comment = Comment.new
    end

    def new
        set_item
        @comment = Comment.new
        # if session[:user_id] == nil
        #     redirect_to login_path
        # else
        #     @comment = Comment.new(params_comment)
        # end

    end

    def create
        # @item = Item.new(post_params)
        # @cat = Category.all
        # @item.save
        # redirect_to item_path(@item)
        #@item = Item.find(params[:id])
        @comment = Comment.new
        if session[:user_id] == nil
            redirect_to login_path
        elsif @comment.valid?
            @comment = Comment.create(content: params[:comment][:title][:content][:rating], item_id: params[:id])
            redirect_to 'items/#{params[:id]}'
        else
            byebug
            flash[:errors] = @comment.errors.messages
            redirect_to 'show/items/#{params[:id]'
        end

    end

    private

    # def comment_params
    #     params.require(:comment).permit(:item_id, :user_id, :title, :content, :rating)
    # end

    def set_item
        @item = Item.find(params[:id])
    end

end
