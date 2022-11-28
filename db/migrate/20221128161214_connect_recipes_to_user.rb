class ConnectRecipesToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :recipes, :user
    add_foreign_key :recipes, :users
  end
end
