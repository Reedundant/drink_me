class AddImageUrlToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :img_url, :string
  end
end
