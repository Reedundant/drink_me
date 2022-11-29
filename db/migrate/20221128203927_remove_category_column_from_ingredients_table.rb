class RemoveCategoryColumnFromIngredientsTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :ingredients, :category, :string
  end
end
