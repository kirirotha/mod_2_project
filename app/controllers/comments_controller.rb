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
        @comment = Comment.create(comment_params)

        if params[:comments][:content] != nil
            @comment.save
        end
        
        # if session[:user_id] == nil
        #     redirect_to login_path
        # elsif @comment.valid?
        #     @comment.save
        #     redirect_to 'items/#{params[:id]'
        # else
        #     flash[:errors] = @comment.errors.messages
        #     redirect_to 'show/items/#{params[:id]'
        # end
        
    end

    private

    def comment_params
        params.require(:comment).permit(:item_id, :user_id, :title, :content, :rating)
    end




    def comment_params
        params.require(:comment).permit(:item_id, :rating, :title, :content)
    end
end
