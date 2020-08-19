class CategoriesController < ApplicationController
    before_action :set_category, only:[:show, :edit, :update, :destroy]
    before_action :set_cart


    def index
        @categories = Category.all
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
