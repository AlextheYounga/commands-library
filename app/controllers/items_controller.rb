class ItemsController < ApplicationController
    before_action :set_item, only: [:edit, :destroy]

    def create    
        @item = Item.new
        @item.content = params["content"]
        @item.notes = params["notes"]
        if params["category_ids"] != ""
            @item.category_ids = params["category_ids"]
        end
        current_user ||= User.find(session[:user_id]) if session[:user_id]
        @item.user = current_user
        @item.save!
    end

    private
        def set_item
            @item = Item.find(params[:id])
        end               
end