class DropTools < ActiveRecord::Migration[7.0]
  def change
    drop_table :tools
  end
end
