class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.references :recipe_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
