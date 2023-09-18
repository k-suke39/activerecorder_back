class Practice < ApplicationRecord
  belongs_to :chapter, optional: true
  belongs_to :work, optional: true
end
