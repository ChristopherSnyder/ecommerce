class User < ApplicationRecord
    has_many :orders

    validates :username, presence: true
    validates :password, presence: true
    validates :accesslevel, presence: true
    validates :province, presence: true
end
