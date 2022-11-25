class UserIngredientsController < ApplicationController
  before_action :set_categories, only: %i[index new unselect select]
  def index
    @user_ingredients = UserIngredient.all
    @user = current_user
  end

  def new
    @user_ingredient = UserIngredient.new
    @user = current_user
  end

  def create
    @user = current_user
    @ingredients = Ingredient.all
    @ingredients.each do |i|
      @user_ingredient = UserIngredient.new(ingredient: i, user: @user)
      render :new, status: 422 and return unless @user_ingredient.save
    end
    # raise
    redirect_to user_ingredients_path
  end

  def unselect
  end

  def select
  end

  private

  def set_categories
    @liquors = Ingredient.where(category: 'liquor')
    @liqueurs = Ingredient.where(category: 'liqueur')
    @syrups = Ingredient.where(category: 'syrup')
    @juices = Ingredient.where(category: 'juice')
  end

  def user_ingredient_params
    params.require(:user_ingredient).permit(:ingredient_id)
  end
end

  # ids = params["user_ingredient"]["ingredient_id"]
  # @ingredients = Ingredient.where(id: ids)
  # filtered_ids = ids.select { |id| id.present? }
  # @ingredients_selected = @ingredients.update(status: "selected")
  # raise
  # @status = UserIngredient.where(user: current_user)
