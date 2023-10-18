FactoryBot.define do
  factory :work do
    name { 'トライアル編' }
    description { '操作に慣れてみよう' }
    slug { 'trial' }
    order_number { 1 }
  end
end