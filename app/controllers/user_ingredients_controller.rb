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

  def edit_selection
    @user_ingredients = current_user.user_ingredients
    @user_liquors = []

    @user_ingredients.each do |user_ingredient|
      if user_ingredient.ingredient.category == 'liquor'
        @user_liquors << user_ingredient.ingredient.id
      end
    end

    # raise
    @liquors = Ingredient.where(category: 'liquor')
    @liqueurs = Ingredient.where(category: 'liqueur')
    @syrups = Ingredient.where(category: 'syrup')
    @juices = Ingredient.where(category: 'juice')
  end

  # def edit
  #   raise
  #   @user = current_user
  #   @user_ingredient = UserIngredient.find(params[:id])
  # end

  private

  def user_ingredient_params
    params.require(:user_ingredient).permit(:ingredient_id)
  end
end
