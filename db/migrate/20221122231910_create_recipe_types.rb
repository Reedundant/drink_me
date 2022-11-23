class CreateRecipeTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_types do |t|
      t.string :name
      t.integer :liquor_ratio
      t.integer :liquer_ratio
      t.integer :juice_ratio
      t.integer :syrup_ratio
      t.string :difficulty

      t.timestamps
    end
  end
end
