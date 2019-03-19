class User < ApplicationRecord
    has_one :provinces
    has_many :orders

    validates :username, presence: true
    validates :password, presence: true
    validates :accesslevel, presence: true
    validates :province, presence: true
end
