class Ingredient < ApplicationRecord
  has_many :user_ingredients
  has_many :users, through: :user_ingredients

  validates :name, :category, presence: { strict: true }
end
