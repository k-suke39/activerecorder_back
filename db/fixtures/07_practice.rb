Practice.seed(:id,
  { :id => 1, :work_id => 1, :chapter_id => 1, :user_id => 1, :title => "操作に慣れてみよう！", :question => "Jonがcurrent_userです。current_userとエディタに書いて実行すれば正解です。", :answer => "current_user", :order_number => 1},
  { :id => 2, :work_id => 1, :chapter_id => 2, :user_id => 2, :title => "allメソッドを使ってみよう!", :question => "Emilyがcurrent_userです。Emilyに紐づく投稿(Posts)を全て取得してください。", :answer => "current_user.boards", :order_number => 2},
)