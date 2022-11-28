class DropRecipeTypes < ActiveRecord::Migration[7.0]
  def change
    drop_table :recipe_types, force: :cascade
  end
end
