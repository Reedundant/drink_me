class UserIngredientsController < ApplicationController
  def index
    @user_ingredients = UserIngredient.all
  end

  def new
    @user_ingredient = UserIngredient.new
    @user = current_user

    @liquors = Ingredient.where(category: 'liquor')
    @liqueurs = Ingredient.where(category: 'liqueur')
    @syrups = Ingredient.where(category: 'syrup')
    @juices = Ingredient.where(category: 'juice')
  end

  def create
    # binding.break
    @user = current_user

    ids = params["user_ingredient"]["ingredient_id"]
    @ingredients = Ingredient.where(id: ids)

    # filtered_ids = ids.select { |id| id.present? }

    @ingredients.each do |i|
      @user_ingredient = UserIngredient.new(ingredient: i, user: @user)
      render :new, status: 422 and return unless @user_ingredient.save
    end

    redirect_to user_ingredients_path, notice: "works!"
  end

  private

  def user_ingredient_params
    params.require(:user_ingredient).permit(:ingredient_id)
  end
end
