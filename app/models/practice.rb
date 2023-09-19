# frozen_string_literal: true

class Practice < ApplicationRecord
  belongs_to :chapter, optional: true
  belongs_to :work, optional: true
end
