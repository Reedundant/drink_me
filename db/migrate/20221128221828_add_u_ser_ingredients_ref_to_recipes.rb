class AddUSerIngredientsRefToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_reference :recipes, :user_ingredients, null: false, foreign_key: true
  end
end
