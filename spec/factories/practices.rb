FactoryBot.define do
  factory :practice do
    work_id { 1 }
    chapter_id { 1 }
    user_id { 1 }
    title {'操作に慣れてみよう!'}
    question {'Johnがcurrent_userです。current_userとエディタに書いて実行すれば正解です。'}
    answer {'current_user'}
    order_number { 1 }
  end
end