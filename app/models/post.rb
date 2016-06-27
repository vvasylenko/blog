class Post < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :tags
  validates :user_id, :text, :title, presence: {message: "%{value} is not a valid value"}
  validates :email, :email_format => {:message => 'is not valid'}

  after_save :bind_post_with_tag

  private

  def bind_post_with_tag
    tag = Tag.find_by name: "Post"
    self.tag_ids = tag.id
  end
end
