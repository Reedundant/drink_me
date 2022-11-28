class UserIngredientsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @ingredients = Ingredient.all
    @user_ingredients = UserIngredient.all
  end

  def toggle_selected
    # ingredient.toggle :selected
    @user_ingredient = UserIngredient.find(params[:id])

    if @user_ingredient.selected
      @user_ingredient.update(selected: false)
    else
      @user_ingredient.update(selected: true)
    end

    redirect_to user_ingredients_path
    # raise
  end
end
