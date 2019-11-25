class CategoriesController < ApplicationController
    before_action :set_category, only: [:edit, :destroy]

    def create    
        @category = Category.new
        @category.name = params["category_name"]
        @category.color = params["category_color"]
        selector = (params["category_name"]).gsub(/\s+/, "").downcase.to_s
        @category.selector = selector
        @category.save!
    end

    private
        def set_category
            @category = Category.find(params[:id])
        end
    
end