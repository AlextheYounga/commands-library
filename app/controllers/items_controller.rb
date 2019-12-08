class ItemsController < ApplicationController
    before_action :set_item, only: [:edit, :destroy]

    def create
        current_user ||= User.find(session[:user_id]) if session[:user_id]
        @item = Item.new(
            content: params["content"],
            notes: params["notes"],            
            user: current_user          
        )
        @item.category_ids = params["category_ids"] ? params["category_ids"] : nil
        if @item.save!
            respond_to do |format|  
                format.js
                format.html { redirect_to @item, notice: 'Item successfully created' }
                format.json { render "items/create", status: :created, location: @item }
            end        
        end
    end

    private
        def set_item
            @item = Item.find(params[:id])
        end               
end