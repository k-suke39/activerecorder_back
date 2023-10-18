# frozen_string_literal: true

class Practice < ApplicationRecord
  belongs_to :chapter
  belongs_to :work
  belongs_to :user
end
