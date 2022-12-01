class UserIngredientsController < ApplicationController
  before_action :authenticate_user!
  before_action :create_user_ingredients, only: [:index]

  def index
    @user = current_user
    # @ingredients = Ingredient.where(user: current_user)
    ## Add .order to help organize ingredients
    @user_ingredients = UserIngredient.where(user: current_user).includes(:ingredient).order('ingredients.name asc')
  end

  def toggle_selected
    # ingredient.toggle :selected

    @user_ingredient = UserIngredient.find(params[:id])

    if @user_ingredient.selected
      @user_ingredient.update(selected: false)
    else
      @user_ingredient.update(selected: true)
    end
    head :ok
  end

  private

  def create_user_ingredients
    if current_user && current_user.user_ingredients.empty?
      Ingredient.all.each do |i|
        UserIngredient.create(ingredient: i, user: current_user)
      end
    end
  end
end
