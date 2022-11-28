class DropUserTools < ActiveRecord::Migration[7.0]
  def change
    drop_table :user_tools
  end
end
