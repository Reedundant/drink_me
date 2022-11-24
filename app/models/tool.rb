class Tool < ApplicationRecord
  has_many :users, through: :user_tools
  validates :name, presence: true
end
