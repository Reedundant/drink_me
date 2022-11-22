class AddUnitsToTools < ActiveRecord::Migration[7.0]
  def change
    add_column :tools, :units, :string
  end
end
