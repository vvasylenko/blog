class User < ActiveRecord::Base
  has_many :posts
  validates :email, :first_name, :password, presence: {message: "%{value} is not a valid value"}
end
