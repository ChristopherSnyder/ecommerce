class Province < ApplicationRecord
    has_many :users
    validates :name, presence: true
    validates :taxrate, presence: true
end
