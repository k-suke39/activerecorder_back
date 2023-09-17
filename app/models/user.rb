class User < ApplicationRecord
  enum role: { general: 0, admin: 1 }
  has_many :posts
  has_many :comments
  has_many :likes
end
