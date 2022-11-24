class AddingFieldsToRecipeTypes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipe_types, :liquor2_ratio, :integer
    add_column :recipe_types, :liquer2_ratio, :integer
    add_column :recipe_types, :juice2_ratio, :integer
    add_column :recipe_types, :syrup2_ratio, :integer
    add_column :recipe_types, :other_ratio, :integer
  end
end
