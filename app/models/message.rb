class Message < ActiveRecord::Base
  validates :email, :title, :body, presence: true
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
