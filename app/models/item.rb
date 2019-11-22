class Item < ActiveRecord::Base
    belongs_to :user
    has_many :item_categories
    has_many :categories, through: :item_categories
    validates :content, presence: true
    validates :user_id, presence: true
end