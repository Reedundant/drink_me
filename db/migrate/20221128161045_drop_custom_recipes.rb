class DropCustomRecipes < ActiveRecord::Migration[7.0]
  def change
    drop_table :custom_recipes
  end
end
