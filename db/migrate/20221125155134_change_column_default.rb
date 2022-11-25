class ChangeColumnDefault < ActiveRecord::Migration[7.0]
  def change
    change_column :user_ingredients, :status, :integer, default: 0
  end
end
