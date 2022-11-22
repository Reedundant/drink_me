class UserTool < ApplicationRecord
  belongs_to :user
  belongs_to :tool

  validates :user_id, presence: true
  validated :tool_id, presence: true

end
