class User < ApplicationRecord
    
    has_many :allergens
    has_many :ingredients, through: :allergens
    has_many :recipes

    validates :name, presence: true
end
