class PagesController < ApplicationController

    def home     
    end

    def library
        @items = Item.all
    end

end