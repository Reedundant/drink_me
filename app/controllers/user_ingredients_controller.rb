class UserIngredientsController < ApplicationController
  def new
    @user_ingredient = UserIngredient.new
    @ingredients_test = Ingredient.all
    @liquors = Ingredient.where(category: 'liquor')
    @liqueurs = Ingredient.where(category: 'liqueur')
    @syrups = Ingredient.where(category: 'syrup')
    @juices = Ingredient.where(category: 'juice')
    # raise
  end
end
