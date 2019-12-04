require 'securerandom'
class PagesController < ApplicationController

    def home     
    end

    def library
        @items = Item.all
        @categories = Category.all
        
    end

end