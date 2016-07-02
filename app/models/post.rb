class Post < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :tags
  validates :user_id, :text, :title, presence: {message: "%{value} is not a valid value"}

  after_save :bind_post_with_tag

  scope :created_today, -> { where("created_at = ?", Date.today) }

  private

    def bind_post_with_tag
      tag = Tag.find_by name: "Post"
      self.tag_ids = tag.id
    end

  public
    def tags_count
      Post.find_by(id).tags.count
    end

    def get_twenty_symbols
      text.truncate(20)
    end


end
