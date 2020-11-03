class Recipe < ApplicationRecord
  
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  belongs_to :user

  #validates :name, :mealtype, presence: true
  #validates :mealtype, inclusion: { in: %w(breakfast lunch dinner appetizers sweets) }

end
