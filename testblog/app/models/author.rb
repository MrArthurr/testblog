class Author < ActiveRecord::Base
  validates :name, :surname, :age, presence: true
  validates :name, :surname, length: {in: 1..15}



  # has_many :posts
  # has_many :posts, through: :author_posts
  has_many :posts

  def fullname
    "#{name} #{surname}"
  end

  end
