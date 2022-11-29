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

    fetch_recipes(@selected_ingredients)
  end

  def show
    @id = params[:id]
    fetch_single_recipe(@id)
    raise

    # @filter_url_serialized = URI.open(@filter_url).read
    # @filter_data = JSON.parse(@filter_url_serialized)["drinks"]
  end

  private

  def fetch_recipes(ingredients)
    @api_key = ENV.fetch("COCKTAILDB_API_KEY")
    @filter_url = "https://www.thecocktaildb.com/api/json/v2/#{@api_key}/filter.php?i=#{ingredients}"
    # @filter_url = "https://www.thecocktaildb.com/api/json/v2/#{@api_key}/filter.php?i=Gin,Rum"

    @filter_url_serialized = URI.open(@filter_url).read
    @filter_data = JSON.parse(@filter_url_serialized)["drinks"]
  end

  def fetch_single_recipe(id)
    @api_key = ENV.fetch("COCKTAILDB_API_KEY")
    @single_recipe_url = "https://www.thecocktaildb.com/api/json/v2/#{@api_key}/lookup.php?i=#{id}"
    @single_recipe_url_serialized = URI.open(@single_recipe_url).read
    @single_recipe_data = JSON.parse(@single_recipe_url_serialized)["drinks"]
  end
end

  # @filter_data[0]["strDrink"]
    # @filter_data.each do |recipe|
    #   Recipe.create(name: recipe["strDrink"])
    # end
