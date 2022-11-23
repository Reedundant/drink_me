class Tool < ApplicationRecord
  has_many :users, through: :user_tools
  validates :tool, presence: true
end
