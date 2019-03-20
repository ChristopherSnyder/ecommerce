class Product < ApplicationRecord
    has_one :category
    validates :name, presence: true
    validates :category, presence: true
    validates :price, presence: true
end
