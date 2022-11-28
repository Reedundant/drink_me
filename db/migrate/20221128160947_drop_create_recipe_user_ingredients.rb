class DropCreateRecipeUserIngredients < ActiveRecord::Migration[7.0]
  def change
    drop_table :custom_recipe_user_ingredients

  end
end
