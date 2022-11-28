class RemoveUserIngredientsColumnToRecipeTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :recipes, :user_ingredients, :integer, foreign_key: true
  end
end
