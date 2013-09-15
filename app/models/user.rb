class User < ActiveRecord::Base
  # :registerable, :confirmable, :recoverable,
  devise :database_authenticatable, :rememberable, :trackable, :validatable

  # Associations
  has_many :posts

  # Validations
  validates :username, :email, uniqueness: true
end