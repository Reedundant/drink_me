class UserIngredient < ApplicationRecord
  # has_many :ingredient
  belongs_to :ingredient
  belongs_to :user

  has_many :custom_recipe_user_ingredients
  has_many :custom_recipes, through: :custom_recipe_user_ingredients

  validates :ingredient, presence: { strict: true }

  enum status: {
    unselected: 0, # .unselected => UserIngredient.where(status: :unselected)
    selected: 1
  }
end
