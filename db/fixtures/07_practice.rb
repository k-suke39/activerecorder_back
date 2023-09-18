Practice.seed(:id,
  #トライアル編
  { :id => 1, :work_id => 1, :chapter_id => 1, :user_id => 1, :title => "操作に慣れてみよう!", :question => "Johnがcurrent_userです。current_userとエディタに書いて実行すれば正解です。", :answer => "current_user", :order_number => 1},
  { :id => 2, :work_id => 1, :chapter_id => 2, :user_id => 1, :title => "allメソッドを使ってみよう!", :question => "ユーザの一覧を取得してみましょう。", :answer => "User.all", :order_number => 2},
  { :id => 3, :work_id => 1, :chapter_id => 3, :user_id => 1, :title => "find_byメソッドを使ってみよう!", :question => "ユーザのidが8のレコードを取得してみましょう。", :answer => "User.find_by(id: 8)", :order_number => 3},
  { :id => 4, :work_id => 1, :chapter_id => 4, :user_id => 1, :title => "他のデータも取得してみよう！", :question => "投稿の一覧を取得してみましょう。", :answer => "Post.all", :order_number => 4},
  { :id => 5, :work_id => 1, :chapter_id => 5, :user_id => 1, :title => "whereメソッドを使ってみよう!", :question => "投稿のタイトルが【最近のレシピ】に該当するレコードを取得してみましょう。", :answer => 'Post.find_by(title: "最近のレシピ")', :order_number => 5},

  #初級編
  { :id => 20, :work_id => 2, :chapter_id => 20, :user_id => 7, :title => "current_userの投稿を取得する", :question => "Lilyがcurrent_userです。Lilyの投稿をすべて取得するためには、どのようにコードを書くべきでしょうか？", :answer => "current_user.posts", :order_number => 4},
  { :id => 21, :work_id => 2, :chapter_id => 21, :user_id => 3, :title => "current_userのコメントを取得する", :question => "Steveがcurrent_userです。Steveが書いたコメントをすべて取得するためには、どのようにコードを書くべきでしょうか？", :answer => "current_user.comments", :order_number => 5},
  { :id => 22, :work_id => 2, :chapter_id => 22, :user_id => 4, :title => "current_userが投稿した特定のタイトルの投稿を取得する", :question => "Michaelがcurrent_userです。Michaelが投稿した「仕事の話」のタイトルの投稿を取得するためには、どのようにコードを書くべきでしょうか？", :answer => 'current_user.posts.where(title: "仕事の話")', :order_number => 3},
  { :id => 23, :work_id => 2, :chapter_id => 23, :user_id => 9, :title => "current_userがコメントした特定の内容のコメントを取得する", :question => "Lunaがcurrent_userです。Lunaがコメントした「「ハリーポッター」シリーズ、私も大好きです!」という内容のコメントを取得するためには、どのようにコードを書くべきでしょうか？", :answer => 'current_user.comments.where(content: "「ハリーポッター」シリーズ、私も大好きです!")', :order_number => 4},
  { :id => 24, :work_id => 2, :chapter_id => 24, :user_id => 1, :title => "current_userがコメントした投稿を取得する", :question => 'Johnがcurrent_userです。Johnがコメントした投稿をすべて取得するためには、どのようにコードを書くべきでしょうか？', :answer => 'current_user.commented_posts', :order_number => 8},
  { :id => 25, :work_id => 2, :chapter_id => 25, :user_id => 5, :title => "current_userがいいねした投稿を取得する", :question => "Andersonがcurrent_userです。Andersonがいいねした投稿をすべて取得してください", :answer => 'current_user.liked_posts', :order_number => 3},
  { :id => 26, :work_id => 2, :chapter_id => 26, :user_id => 6, :title => "current_userがいいねした特定の投稿を取得する", :question => "Georgeがcurrent_userです。Georgeがいいねした【最近見た映画】という投稿を取得してください", :answer => 'current_user.liked_posts.where(title: "最近見た映画")', :order_number => 3},


  #中級編
  { :id => 40, :work_id => 3, :chapter_id =>40, :user_id => 3, :title => "current_userがコメントした全てのユーザーを取得する", :question => 'Steveがcurrent_userです。Steveがコメントした全てのユーザーを取得するためには、どのようにコードを書くべきでしょうか？', :answer => 'current_user.comments.map { |comment| comment.post.user }.uniq', :order_number => 1},
  { :id => 41, :work_id => 3, :chapter_id =>41, :user_id => 10, :title => "current_userがいいねした全ての投稿の中で最も多くコメントされたものを取得する", :question => 'Billがcurrent_userです。Billがコメントした投稿の中で最も多くいいねされたものを取得するためには、どのようにコードを書くべきでしょうか？', :answer => 'current_user.likes.map(&:post).max_by { |post| post.comments.count }', :order_number => 3},
  { :id => 42, :work_id => 3, :chapter_id =>42, :user_id => 5, :title => "current_userがコメントした投稿の中で最も多くいいねされた投稿を取得する", :question => 'Bobがcurrent_userです。Bobがいいねした全ての投稿の中で最も多くコメントされたものを取得するためには、どのようにコードを書くべきでしょうか？', :answer => 'current_user.comments.map(&:post).max_by { |post| post.likes.count }', :order_number => 3}
)
