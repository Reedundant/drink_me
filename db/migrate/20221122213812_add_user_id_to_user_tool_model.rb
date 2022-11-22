class AddUserIdToUserToolModel < ActiveRecord::Migration[7.0]
  def change
    add_column :user_tools, :user_id, :integer
    add_column :user_tools, :tool_id, :integer

  end
end
