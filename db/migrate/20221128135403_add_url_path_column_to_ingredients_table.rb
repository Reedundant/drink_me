class AddUrlPathColumnToIngredientsTable < ActiveRecord::Migration[7.0]
  def change
    add_column :ingredients, :src_path, :string
  end
end
