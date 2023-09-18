Practice.seed(:id,
  { :id => 1, :work_id => 1, :chapter_id => 1, :user_id => 1, :title => "操作に慣れてみよう！", :question => "Johnがcurrent_userです。current_userとエディタに書いて実行すれば正解です。", :answer => "current_user", :order_number => 1},
  { :id => 2, :work_id => 2, :chapter_id => 1, :user_id => 2, :title => "１対多のデータを取得してみよう! Part1", :question => "Emilyがcurrent_userです。Emilyに紐づく投稿を全て取得してください。", :answer => "current_user.posts", :order_number => 2},
  { :id => 3, :work_id => 2, :chapter_id => 2, :user_id => 3, :title => "１対多のデータを取得してみよう! Part2", :question => "Steveがcurrent_userです。Steveに紐づくコメントを全て取得してください。", :answer => "current_user.comments", :order_number => 3},
  { :id => 4, :work_id => 2, :chapter_id => 3, :user_id => 6, :title => "条件を絞って取得してみよう!", :question => "Andersonがcurrent_userです。Andersonの「今日はいい天気!」という投稿を取得してください", :answer => 'current_user.posts.where(title: "今日はいい天気")', :order_number => 4},
  { :id => 5, :work_id => 2, :chapter_id => 4, :user_id => 5, :title => "順番を並び替えて取得してみよう!", :question => "Stephanyがcurrent_userです。Stephanyの投稿を古い順に並び替えてください", :answer => 'current_user.comments.order', :order_number => 5},
  { :id => 6, :work_id => 3, :chapter_id => 1, :user_id => 5, :title => "intermediate1", :question => "intermediate1", :answer => 'intermediate1', :order_number => 6},
  { :id => 7, :work_id => 3, :chapter_id => 2, :user_id => 5, :title => "intermediate2", :question => "intermediate2", :answer => 'intermediate1', :order_number => 7},
)