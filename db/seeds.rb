puts "> Destroying all ingredients, and users..."
Recipe.destroy_all
UserIngredient.destroy_all
Ingredient.destroy_all
User.destroy_all

puts "> Done destroying all ingredients, and users! "

puts "> Generating users..."
puts ""

User.create!(email: 'jacktorrance@gmail.com', username: 'jacktorrance', age: 57, password: 'drinkme123')
User.create!(email: 'jacknicholson@gmail.com', username: 'jacknietzscheson', age: 85, password: 'drinkme123')
# pp User.all

puts "> Done generating users! 👤"
puts ""

puts "> Generating ingredients..."
puts ""

require_relative 'api_call_ingredients'

# Call method from api_call_ingredients ()
api_call_ingredients

pp Ingredient.count

puts ""
puts "> Done generating ingredients! 🥃"


# Recipe.create!(name: "Under Your Nose", recipe_type: recipetype)
