class CommentsController < ApplicationController

    def new
        @item = Item.find(params[:item_id])
        @comment = Comment.new
    #     if session[:user_id] == nil
    #         redirect_to login_path
    #     else
    #        @item = 
    #     end
    #     @comment = Comment.new(params_comment)

    end

    def create
        @comment = Comment.new(comment_params)
        @comment.save
        redirect_to item_path(@comment[:item_id])
    end

    # private

    # def params_comment
    #     params.require(:comment).permit(:name)
    # end
    



    def comment_params
        params.require(:comment).permit(:item_id, :rating, :title, :content)
    end
end
