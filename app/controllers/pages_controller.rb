class PagesController < ApplicationController
    before_action :set_cart
    before_action :best_sellers, only:[:home]
    before_action :search, only:[:best_sellers]

    
    def home

    end

    def search_results

    end

    private


    def best_sellers
        @high_numbers = [0,0,0,0,0]
        
        items_count = Item.all.map do |i|
            item_count = 0
            Order.all.each do |o|
                 counts = o.shopping_cart.selected_items.select{ |oi| oi.item == i}.count
                item_count += counts
                 
            end
            [i.id, item_count]
        end
        sorted = items_count.sort_by{ |i| i[1]}.reverse![0..4]
        @best_sellers = sorted.map{|s| Item.find(s[0])}
        
    end

    def search
        @searched_items = Items.search(item_to_search)
    end


end