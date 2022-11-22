class Ingredient < ApplicationRecord
  validates :name, :category, presence: { strict: true }
end
