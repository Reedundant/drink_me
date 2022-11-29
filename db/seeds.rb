require_relative 'api_call_ingredients'

puts "> Destroying all instances..."
Recipe.destroy_all
UserIngredient.destroy_all
Ingredient.destroy_all
User.destroy_all

puts "> Done destroying all instances! "

puts "> Generating users..."
puts ""

User.create!(email: 'jacktorrance@gmail.com', username: 'jacktorrance', age: 57, password: 'drinkme123')
User.create!(email: 'jacknicholson@gmail.com', username: 'jacknietzscheson', age: 85, password: 'drinkme123')
pp User.all
puts ""
puts "> Done generating users! 👤"

puts "> Generating ingredients & user ingredients..."
puts ""

# Call method from api_call_ingredients
api_call_ingredients

# Pass ingredients in user Jack Torrance's ingredients
ingredients = Ingredient.all
ingredients.each do |i|
  UserIngredient.create(ingredient: i, user: User.first)
end

pp UserIngredient.all

puts ""
puts "> Done generating ingredients & user ingredients! 🥃"

# Recipe.create!(name: "Under Your Nose", recipe_type: recipetype)
