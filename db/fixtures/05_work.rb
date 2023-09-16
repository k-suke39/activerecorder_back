Work.seed(:id,
  { :id => 1, :name => "トライアル編", :description => "操作に慣れてみましょう！",  :slug => "trial",:order_number => 1 },
  { :id => 2, :name => "初級編", :description => "current_userを使って一対多のデータを取得してみよう!",  :slug => "beginner", :order_number => 2},
  { :id => 3, :name => "中級編", :description => "current_userを使って少し複雑なデータを取得してみよう!",  :slug => "intermediate",:order_number => 3}
)