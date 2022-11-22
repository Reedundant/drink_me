class CreateUserTools < ActiveRecord::Migration[7.0]
  def change
    create_table :user_tools do |t|

      t.timestamps
    end
  end
end
