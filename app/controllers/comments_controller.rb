class CommentsController < ApplicationController

    def new
    #     if session[:user_id] == nil
    #         redirect_to login_path
    #     else
    #        @item = 
    #     end
    #     @comment = Comment.new(params_comment)

    end

    def create
        @comment = Comment.create(content: params[:comment][:content], item_id: params[:id])
        redirect_to 'items/#{params[:id]}'
    end

    # private

    # def params_comment
    #     params.require(:comment).permit(:name)
    # end

end
