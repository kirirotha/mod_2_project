class UsersController < ApplicationController
    before_action :set_user, only:[:show, :edit, :update, :destroy]
    
    def index
        @users=User.all
    end

    def show
        set_user
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(post_params)
        if @user.valid?
            @user.save
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.messages
            #@user.errors.full_messages
            #render :new
            redirect_to new_user_path
        end

    end



    private

    def set_user
        @user = User.find(params[:id])
    end

    def post_params
        params.require(:user).permit(:username, :age, :email, :password, :password_confirmation)
    end

end
