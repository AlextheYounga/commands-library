class ItemsController < ApplicationController

    def create    
        @item = Item.new
        @item.content = params["content"]
        @item.user = current_user
        if @item.save
            flash[:notice] = "Item was successfully created".         
        else
            flash[:notice] = "Failed to save item."
        end
    end

    private
        def set_item
            @item = Item.find(params[:id])
        end               
end