require 'dotenv'
Dotenv.load
require 'json'
require 'open-uri'

class RecipesController < ApplicationController
  # def fetch_ingredients
  # end

  def index
    @user = current_user
    @user_ingredients = UserIngredient.where(selected: true)
    @selected_ingredients = @user_ingredients.map { |x| x.ingredient.name.gsub(' ', '+') }
    # @selected_ingredients = 'Gin'

    fetch_ingredients(@selected_ingredients)
  end

  def fetch_ingredients(ingredients)
    @api_key = ENV.fetch("COCKTAILDB_API_KEY")
    @filter_url = "https://www.thecocktaildb.com/api/json/v2/#{@api_key}/filter.php?i=#{ingredients}"
    # @filter_url = "https://www.thecocktaildb.com/api/json/v2/#{@api_key}/filter.php?i=Gin,Rum"

    @filter_url_serialized = URI.open(@filter_url).read
    @filter_data = JSON.parse(@filter_url_serialized)["drinks"]
    raise
  end
end
