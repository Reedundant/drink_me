class RecipesController < ApplicationController
  def eat_my_hat
    @recipes = Recipe.all
  end
end
