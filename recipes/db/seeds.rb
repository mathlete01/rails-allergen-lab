# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Faker::Food.ingredient
#Faker::FunnyName.name
#Faker::Food.dish

# Ingredients
10.times do
    Ingredient.create(name: Faker::Food.ingredient)
end

# Users
10.times do 
    User.create(name: Faker::FunnyName.name)
end

# Allergens
10.times do
    Allergen.create(user: User.all.sample, ingredient: Ingredient.all.sample)
end

# Recipes
mealtypes_arr = ['breakfast', 'lunch', 'dinner', 'appetizers', 'sweets']

10.times do
    Recipe.create(name: Faker::Food.dish, mealtype: mealtypes_arr.sample, user: User.all.sample)
end

# Recipe Ingredients

50.times do
    RecipeIngredient.create(recipe: Recipe.all.sample, ingredient: Ingredient.all.sample)
end