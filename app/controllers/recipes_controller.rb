require 'dotenv'
Dotenv.load
require 'json'
require 'open-uri'

class RecipesController < ApplicationController
  def index
    @user = current_user
    @user_ingredients = UserIngredient.where(selected: true)
    @ingredients_array = @user_ingredients.map { |x| x.ingredient.name.gsub(' ', '+') }
    @selected_ingredients = @ingredients_array.join(",")

    fetch_ingredients(@selected_ingredients)
  end

  private

  def fetch_ingredients(ingredients)
    @api_key = ENV.fetch("COCKTAILDB_API_KEY")
    @filter_url = "https://www.thecocktaildb.com/api/json/v2/#{@api_key}/filter.php?i=#{ingredients}"
    # @filter_url = "https://www.thecocktaildb.com/api/json/v2/#{@api_key}/filter.php?i=Gin,Rum"

    @filter_url_serialized = URI.open(@filter_url).read
    @filter_data = JSON.parse(@filter_url_serialized)["drinks"]

    # @filter_data[0]["strDrink"]
    # @filter_data.each do |recipe|
    #   Recipe.create(name: recipe["strDrink"])
    # end
  end

  def show
    raise
    # @recipe =
    # @api_key = ENV.fetch("COCKTAILDB_API_KEY")
    # @filter_url = "https://www.thecocktaildb.com/api/json/v2/#{@api_key}/lookup.php?i=#{params[:id]}"

    # @filter_url_serialized = URI.open(@filter_url).read
    # @filter_data = JSON.parse(@filter_url_serialized)["drinks"]
  end
end
