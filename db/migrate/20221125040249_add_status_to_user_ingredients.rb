class AddStatusToUserIngredients < ActiveRecord::Migration[7.0]
  def change
    add_column :user_ingredients, :status, :integer
  end
end
