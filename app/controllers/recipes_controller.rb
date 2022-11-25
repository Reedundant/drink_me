class RecipesController < ApplicationController
  def under_your_nose
    @recipes = Recipe.all
  end
end
