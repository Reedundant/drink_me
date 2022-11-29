class AddUserIngredientsColumnToRecipeTable < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :user_ingredients, :integer, foreign_key: true
  end
end
