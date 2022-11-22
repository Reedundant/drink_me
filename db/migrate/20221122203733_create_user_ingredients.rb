class CreateUserIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :user_ingredients do |t|
      t.references :ingredient, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
