require 'json'
require 'open-uri'

class RecipesController < ApplicationController
  def index
    @user = current_user
    @user_ingredients = UserIngredient.where(selected: true)
    @ingredients_array = @user_ingredients.map { |x| x.ingredient.name.gsub(' ', '+') }
    @selected_ingredients = @ingredients_array.join(",")
    # raise

    fetch_recipes(@selected_ingredients)
  end

  def show
    @id = params[:id]
    fetch_single_recipe(@id)
  end

  def random
    fetch_random_recipe
  end

  private

  def fetch_recipes(ingredients)
    @api_key = ENV["COCKTAILDB_API_KEY"]
    @filter_url = "https://www.thecocktaildb.com/api/json/v2/#{@api_key}/filter.php?i=#{ingredients}"
    # @filter_url = "https://www.thecocktaildb.com/api/json/v2/#{@api_key}/filter.php?i=Gin,Rum"

    @filter_url_serialized = URI.open(@filter_url).read
    if JSON.parse(@filter_url_serialized)["drinks"] != "None Found"
      @filter_data = JSON.parse(@filter_url_serialized)["drinks"]
    else
      @ingredients_array = ingredients.split(',')
      @compiled_results = []
      @ingredients_array.each do |i|
        @filter_url = "https://www.thecocktaildb.com/api/json/v2/#{@api_key}/filter.php?i=#{i}"
        @filter_url_serialized = URI.open(@filter_url).read
        @data = JSON.parse(@filter_url_serialized)["drinks"]
        @compiled_results << @data
      end
      @filter_data = @compiled_results.flatten
      # raise
    end
  end

  def fetch_single_recipe(id)
    @api_key = ENV["COCKTAILDB_API_KEY"]
    @single_recipe_url = "https://www.thecocktaildb.com/api/json/v2/#{@api_key}/lookup.php?i=#{id}"
    @single_recipe_url_serialized = URI.open(@single_recipe_url).read
    @single_recipe_data = JSON.parse(@single_recipe_url_serialized)["drinks"][0]

    @ingredients = @single_recipe_data.select { |k, v| k =~ /strIngredient\d+/ }.compact
    @measurements = @single_recipe_data.select { |k, v| k =~ /strMeasure\d+/ }.compact
  end

  def fetch_random_recipe
    @api_key = ENV["COCKTAILDB_API_KEY"]
    @random_recipe_url = "https://www.thecocktaildb.com/api/json/v2/#{@api_key}/random.php"
    @random_recipe_url_serialized = URI.open(@random_recipe_url).read
    @random_recipe_data = JSON.parse(@random_recipe_url_serialized)["drinks"][0]

    @ingredients = @random_recipe_data.select { |k, v| k =~ /strIngredient\d+/ }.compact
    @measurements = @random_recipe_data.select { |k, v| k =~ /strMeasure\d+/ }.compact
  end
end

  # @filter_data[0]["strDrink"]
    # @filter_data.each do |recipe|
    #   Recipe.create(name: recipe["strDrink"])
    # end
