class CategoriesController < ApplicationController
    before_action :set_category, only:[:show, :edit, :update, :destroy]
    before_action :set_cart
    before_action :cart_count

    def index
        categories = Category.all
        @categories = categories.sort_by{ |c| c[:name]}
    end

    def show
        set_category
    end

    def new
        @category = Category.new
    end

    def create 
        @category = Category.new(post_params)
        @category.save
        redirect_to categories_path
    end



    private

    def set_category
        @category = Category.find(params[:id])
    end

    def post_params
        params.require(:category).permit(:name)
    end

    
end
