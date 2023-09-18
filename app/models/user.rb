class User < ApplicationRecord
  validates :name,               presence: true, length: { minimum: 255 }
  validates :email,              presence: true, length: { minimum: 255 }
  validates :password,           presence: true, length: { minimum: 255 }

  has_many :posts
  has_many :comments
  has_many :likes
  has_many :liked_posts, through: :likes, source: :post
  has_many :commented_posts, through: :likes, source: :post
end


