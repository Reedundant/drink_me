class UserIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :user

  has_many :custom_recipe_user_ingredients
  has_many :custom_recipes, through: :custom_recipe_user_ingredients

  validates :ingredient, presence: { strict: true }
end
