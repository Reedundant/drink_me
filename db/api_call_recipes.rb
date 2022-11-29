# require 'json'
# require 'open-uri'

# def api_call_recipes
#   # recipes_url = ENV['COCKTAILDB_URL']
#   # recipes_url = "https://www.thecocktaildb.com/api/json/v2/9973533/#{sdlfjbs}.php"
#   recipes_url = "https://www.thecocktaildb.com/api/json/v2/9973533/filter.php?i=#{selected_ingredient}"
#   # Filter by ID: "www.thecocktaildb.com/api/json/v1/1/filter.php?i=Dry_Vermouth,Gin,Anis"
#   recipes_url_serialized = URI.open(recipes_url).read
#   recipes_data = JSON.parse(recipes_url_serialized)["drinks"]
#   pp recipes_data

#   recipes = recipes_data.map do |x|
#     x
#   end

#   pp recipes
# end
