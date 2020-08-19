class OrderedItem < ApplicationRecord
    belongs_to :order
    belongs_to :selected_item
end
