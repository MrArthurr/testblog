class Post < ActiveRecord::Base
  validates :title, :content,  presence: true
  validates :title, uniqueness: true
  validates :title, length: {maximum: 80}
  validates :content, length: {in: 1..1000}

  scope :old, -> {where('created_at < ?', 40.minutes.ago)}
# has_many :author_posts
# has_many :author, through: :author_posts
  has_many :comments
  belongs_to :author
end
