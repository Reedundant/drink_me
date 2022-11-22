class CustomRecipeUserIngredient < ApplicationRecord
  belongs_to :custom_recipe
  belongs_to :user_ingredient
end
