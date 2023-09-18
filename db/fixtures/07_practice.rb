Practice.seed(:id,
  #トライアル編
  { :id => 1, :work_id => 1, :chapter_id => 1, :user_id => 1, :title => "【Part1】操作に慣れてみよう", :question => "Johnがcurrent_userです。current_userとエディタに書いて実行すれば正解です。", :answer => "current_user", :order_number => 1},
  { :id => 2, :work_id => 1, :chapter_id => 2, :user_id => 1, :title => "【Part2】操作に慣れてみよう", :question => "ユーザの一覧を取得してみましょう。", :answer => "User.all", :order_number => 2},
  { :id => 3, :work_id => 1, :chapter_id => 3, :user_id => 1, :title => "【Part3】操作に慣れてみよう", :question => "ユーザのidが8のレコードを取得してみましょう。", :answer => "User.find_by(id: 8)", :order_number => 3},
  { :id => 4, :work_id => 1, :chapter_id => 4, :user_id => 7, :title => "current_userの投稿を取得する", :question => "Lilyがcurrent_userです。Lilyの投稿をすべて取得するためには、どのようにコードを書くべきでしょうか？", :answer => "current_user.posts", :order_number => 4},
  { :id => 5, :work_id => 1, :chapter_id => 5, :user_id => 3, :title => "current_userのコメントを取得する", :question => "Steveがcurrent_userです。Steveが書いたコメントをすべて取得するためには、どのようにコードを書くべきでしょうか？", :answer => "current_user.comments", :order_number => 5},
  #初級編
  { :id => 6, :work_id => 2, :chapter_id => 8, :user_id => 4, :title => "current_userが投稿した特定のタイトルの投稿を取得する", :question => "Michaelがcurrent_userです。Michaelが投稿した「仕事の話」のタイトルの投稿を取得するためには、どのようにコードを書くべきでしょうか？", :answer => 'current_user.posts.where(title: "仕事の話")', :order_number => 3},
  { :id => 7, :work_id => 2, :chapter_id => 9, :user_id => 9, :title => "current_userがコメントした特定の内容のコメントを取得する", :question => "Lunaがcurrent_userです。Lunaがコメントした「「ハリーポッター」シリーズ、私も大好きです!」という内容のコメントを取得するためには、どのようにコードを書くべきでしょうか？", :answer => 'current_user.comments.where(content: "「ハリーポッター」シリーズ、私も大好きです!")', :order_number => 4},
  { :id => 8, :work_id => 2, :chapter_id => 13, :user_id => 1, :title => "current_userがコメントした投稿を取得する", :question => 'Johnがcurrent_userです。Johnがコメントした投稿をすべて取得するためには、どのようにコードを書くべきでしょうか？', :answer => 'current_user.commented_posts', :order_number => 8},
  #中級編
  { :id => 9, :work_id => 3, :chapter_id =>14, :user_id => 3, :title => "current_userがコメントした全てのユーザーを取得する", :question => 'Steveがcurrent_userです。Steveがコメントした全てのユーザーを取得するためには、どのようにコードを書くべきでしょうか？', :answer => 'current_user.comments.map { |comment| comment.post.user }.uniq', :order_number => 1},
  { :id => 10, :work_id => 3, :chapter_id =>16, :user_id => 5, :title => "current_userがコメントした投稿の中で最も多くいいねされたものを取得する", :question => 'Andersonがcurrent_userです。Andersonがコメントした投稿の中で最も多くいいねされたものを取得するためには、どのようにコードを書くべきでしょうか？', :answer => 'current_user.comments.map(&:post).max_by { |post| post.likes.count }', :order_number => 3}
)