class CreateCustomRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :custom_recipes do |t|
      # t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
