# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# INGREDIENT SEED
require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_list = JSON.parse(open(url).read).flatten

ingredient_list[1].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

# COCKTAIL SEED
10.times do
  Cocktail.create(name: Faker::Pokemon.move)
end
