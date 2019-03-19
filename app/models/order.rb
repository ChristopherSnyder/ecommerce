class Order < ApplicationRecord
    has_one :products
    has_one :users
    validates :productid, presence: true
    validates :productname, presence: true
    validates :customerid, presence: true
    validates :quantity, presence: true
    validates :subtotal, presence: true
    validates :taxrate, presence: true
    validates :total, presence: true


end
