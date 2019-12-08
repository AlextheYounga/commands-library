class CategoriesController < ApplicationController
    before_action :set_category, only: [:edit, :destroy]

    def create    
        @category = Category.new(
            name: params["name"],
            color: params["color"],
            selector: (params["name"]).gsub(/\s+/, "").downcase.to_s,
        )
        if @category.save!
            respond_to do |format|  
                format.js
                format.html { redirect_to @category, notice: 'Item successfully created' }
                format.json { render "items/create", status: :created, location: @category }
            end        
        end
    end

    private
        def set_category
            @category = Category.find(params[:id])
        end
    
end