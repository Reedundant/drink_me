class CreateUserTools < ActiveRecord::Migration[7.0]
  def change
    create_table :user_tools do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tool, null: false, foreign_key: true

      t.timestamps
    end
  end
end
