class AddSelectedColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :user_ingredients, :selected, :boolean, default: false
  end
end
