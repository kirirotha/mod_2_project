class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :item

    validates :item_id, :user_id, :title, :content, :rating, presence: true

end
