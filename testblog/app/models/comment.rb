class Comment < ActiveRecord::Base
  validates :name, :comment, presence: true
  validates :comment, length: {in: 1..500}

  belongs_to :posts
end
