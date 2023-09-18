class Work < ApplicationRecord
  has_many :chapters, dependent: :destroy
  has_many :practices, dependent: :destroy
end
