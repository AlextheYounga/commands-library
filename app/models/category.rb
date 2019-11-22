#Model for Categories
class Category < ActiveRecord::Base
    has_many :item_categories
    has_many :items, through: :item_categories
    validates :name, presence: true
    validates_uniqueness_of :name
end