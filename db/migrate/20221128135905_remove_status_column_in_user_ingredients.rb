class RemoveStatusColumnInUserIngredients < ActiveRecord::Migration[7.0]
  def change
    remove_column :user_ingredients, :status, :integer, default: 0
  end
end
