class CategoriesController < ApplicationController

    def create    
        @category = Category.new
        @category.name = params["category_name"]
        @category.color = params["category_color"]
        @category.class = params["category_class"]
        @category.save!
    end

    private
        def set_category
            @category = Category.find(params[:id])
        end               
end