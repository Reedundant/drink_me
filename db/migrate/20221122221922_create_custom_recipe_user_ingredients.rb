class CreateCustomRecipeUserIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :custom_recipe_user_ingredients do |t|
      # t.references :custom_recipe, null: false, foreign_key: true
      t.references :user_ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
