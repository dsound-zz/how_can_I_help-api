class Api::V1::CategoriesController < ApplicationController

    
    def index 
        @categoires = Category.all 
    end

    
end
