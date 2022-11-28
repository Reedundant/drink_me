require 'json'
require 'open-uri'

class RecipesController < ApplicationController
  def index
    # @recipes_url = ENV['COCKTAILDB_URL']
    # @recipes_url = "https://www.thecocktaildb.com/api/json/v2/9973533/recent.php"
    # @recipes_url_serialized = URI.open(recipes_url).read
    # @recipes_data = JSON.parse(recipes_url_serialized)['drinks']
    # pp @recipes_data
    # raise
  end

  def under_your_nose
    @recipes = Recipe.all
  end
end
