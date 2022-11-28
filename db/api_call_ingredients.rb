# https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list
require 'json'
require 'open-uri'

# Require packages
# Make API call
# Iterate over JSON to create ingredients
def api_call_ingredients
  ingredients_url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
  ingredients_url_serialized = URI.open(ingredients_url).read
  ingredients_data = JSON.parse(ingredients_url_serialized)['drinks']

  # pp ingredients_data

  ingredients_data.each do |ingredient_data|
    ingredient_string = ingredient_data['strIngredient1']

    puts "#{ingredient_string}"
  end
end
