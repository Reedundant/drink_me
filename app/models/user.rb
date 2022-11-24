class User < ApplicationRecord
  has_many :user_ingredients
  has_many :ingredients, through: :user_ingredients
  has_many :tools, through: :user_tools

  validates :username, presence: true
  # validates :age, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
