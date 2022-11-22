class UserIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :user

  validates :ingredient, presence: { strict: true }
end
