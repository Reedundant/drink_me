class CleaningUpSchema < ActiveRecord::Migration[7.0]
  def change
    remove_reference :recipes, :recipe_type
  end
end
