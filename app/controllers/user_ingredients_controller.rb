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
    binding.break
    # @user_ingredient.ingredient = Ingredient.find(23)
    @user_ingredient = UserIngredient.new(user_ingredient_params)

    ids = params["user_ingredient"]["ingredient_id"]
    filtered_ids = ids.select { |id| id.present? }

    filtered_ids.each do |id|
      @user_ingredient.ingredient = Ingredient.find(id)
    end

    @user_ingredient.user = current_user

    if @user_ingredient.save
      redirect_to new_user_ingredient_path, notice: "works!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_ingredient_params
    params.require(:user_ingredient).permit(:ingredient_id)
    # binding.break
  end

  # RAISE: private method `select' called for nil:NilClass
  # def filter_ingredient_ids
  #   user_ingredient_params["ingredient_id"].select { |id| id.present? }
  # end
end

 # Loop over the get_ingredient_ids, find ingredient that belongs to the id
  # with found ingredient, CREATE NEW USER INGREDIENT
  # UserIngredient.new({
    # user: user goes here,
    # ingredient: ingredient goes here
  #})

  # def fetch_ingredients
  #   # binding.break
  #   raise
  #   # user_ingredient_params.each do |id|
  #   #   Ingredient.find(id)
  #   # end

  #   # params["user_ingredient"]["ingredient_id"]
  # end
  # pp fetch_ingredients
