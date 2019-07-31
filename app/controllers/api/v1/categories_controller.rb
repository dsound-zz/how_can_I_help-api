class Api::V1::CategoriesController < ApplicationController

     # gets Categories for opportunities
    
    def index 
        @categories = Category.all 
        render json: @categories, status: :ok 
    end

end
