# frozen_string_literal: true

FactoryBot.define do
  factory :chapter do
    work_id { 1 }
    name { '操作に慣れてみよう!' }
    slug { 'trial' }
    order_number { 2 }
  end
end
