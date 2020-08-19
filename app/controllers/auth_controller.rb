class AuthController < ApplicationController
  before_action :set_cart


    def login
        render :login
    end
    
    def verify
        @user = User.find_by(email: login_params[:email])
    
        if @user && @user.authenticate(login_params[:password])
          session[:user_id] = @user.id
          redirect_to categories_path
        else
          flash[:error] = 'Login failed..'
          redirect_to login_path
        end
      end
    
      def logout
        session[:user_id] = nil
        redirect_to login_path
      end
    
      private
      def login_params
        params.require(:login).permit(:email,:password)
      end
    


end
