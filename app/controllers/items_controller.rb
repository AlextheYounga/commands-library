class ItemsController < ApplicationController

    def create    
        @item = Item.new
        @item.content = params["item_content"]
        current_user ||= User.find(session[:user_id]) if session[:user_id]
        @item.user = current_user
        @item.save!
    end

    private
        def set_item
            @item = Item.find(params[:id])
        end               
end