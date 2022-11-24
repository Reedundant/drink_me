class UserIngredientsController < ApplicationController
  def new
    @user_ingredient = UserIngredient.new

    @liquors = Ingredient.where(category: 'liquor')
    @liqueurs = Ingredient.where(category: 'liqueur')
    @syrups = Ingredient.where(category: 'syrup')
    @juices = Ingredient.where(category: 'juice')
  end

  # Loop over the get_ingredient_ids, find ingredient that belongs to the id
  # with found ingredient, CREATE NEW USER INGREDIENT
  # UserIngredient.new({
    # user: user goes here,
    # ingredient: ingredient goes here
  #})
  # def fetch_ingredients
  #   user_ingredient_params["user_ingredient"]["ingredient_id"].each do |id|
  #     Ingredient.find(id)
  #   end
  # end

  def create
    # binding.break

    # @user_ingredient.ingredient = Ingredient.find(268)
    @user_ingredient = UserIngredient.new(store_ingredient_ids)
    # @user_ingredient.ingredient = Ingredient.find(fetch_ingredients)
    @user_ingredient.user = current_user
    # @user_ingredient.ingredient = user_ingredient_params.each do |id|
    #   Ingredient.find(id)
    # end
    # raise

    if @user_ingredient.save
      redirect_to new_user_ingredient_path, notice: "works!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_ingredient_params
    params.require(:user_ingredient).permit(:ingredient_id)
  end

  def store_ingredient_ids
    user_ingredient_params["ingredient_id"]
    # user_ingredient_params["ingredient_id"].select { |id| id.present? }
  end
end
