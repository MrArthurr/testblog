class Author < ActiveRecord::Base
  validates :name, :surname, presence: true
  validates :name, :surname, length: {in: 1..15}
  scope :old, -> {where('age > 30')}
  scope :young, -> {where('age < 30')}
  before_create :default_age


  # has_many :posts
  # has_many :posts, through: :author_posts
  has_many :posts

  def fullname
    "#{name} #{surname}"
  end

  private
  def default_age
    self.age = 25 unless age
  end
  end
