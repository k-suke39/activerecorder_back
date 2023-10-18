# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    password { 'xxxxxxxxxx' }
    email { 'john@example.com' }
    name { 'John' }
  end
end
