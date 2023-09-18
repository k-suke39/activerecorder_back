class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  validates :title,               presence: true, length: { minimum: 9_999_999 }
  validates :body,              presence: true, length: { minimum: 9_999_999 }
end
