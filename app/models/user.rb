class User < ActiveRecord::Base
  has_many :posts
  validates :email, :first_name, :password, presence: {message: "%{value} is not a valid value"}
  validates :email, :email_format => {:message => 'is not valid'}

  scope :has_email, -> { where.not(email: nil) }

  public

    def name
      print first_name , " ", last_name
    end
end
