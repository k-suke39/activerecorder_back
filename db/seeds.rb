users = [
  { :id => 1, :password => "xxxxxxxxxx", :email => "john@example.com",   :name => "John"   },
  { :id => 2, :password => "xxxxxxxxxx", :email => "emily@example.com", :name => "Emily" },
  { :id => 3, :password => "xxxxxxxxxx", :email => "steve@example.com", :name => "Steve" },
  { :id => 4, :password => "xxxxxxxxxx", :email => "michael@example.com", :name => "Michael" },
  { :id => 5, :password => "xxxxxxxxxx", :email => "anderson@example.com", :name => "Anderson" },
  { :id => 6, :password => "xxxxxxxxxx", :email => "George@example.com", :name => "George" },
  { :id => 7, :password => "xxxxxxxxxx", :email => "Lily@example.com", :name => "Lily" },
  { :id => 8, :password => "xxxxxxxxxx", :email => "Dudley@example.com", :name => "Dudley" },
  { :id => 9, :password => "xxxxxxxxxx", :email => "Luna@example.com", :name => "Luna" },
  { :id => 10, :password => "xxxxxxxxxx", :email => "Bill@example.com",   :name => "Bill"   }
]

users.each do |user|
  User.create!(user)
end


posts = [
  { :id => 3, :user_id => 1, :title => "美味しいレストラン", :body => "最近、新しくオープンしたレストランに行きました。料理がとても美味しかったです。" },
  { :id => 4, :user_id => 2, :title => "旅行の思い出", :body => "先月、家族で旅行に行きました。素晴らしい思い出ができました。" },
  { :id => 7, :user_id => 3, :title => "楽しかったイベント", :body => "先週末、友人とイベントに参加しました。とても楽しかったです。" },
  { :id => 8, :user_id => 4, :title => "新しい趣味", :body => "最近、新しい趣味として絵を描くことを始めました。癒されます。" },
  { :id => 20, :user_id => 7, :title => "お気に入りのアーティスト", :body => "私のお気に入りのアーティストはTaylor Swiftです。彼女の音楽は心地よく、元気をもらえます。" },
  { :id => 21, :user_id => 8, :title => "新しい仕事", :body => "最近、新しい仕事を始めました。とてもやりがいがあります。" },
  { :id => 25, :user_id => 9, :title => "美味しいレストラン", :body => "最近、新しくオープンしたレストランに行きました。料理がとても美味しかったです。" },
  { :id => 27, :user_id => 10, :title => "初めての投稿", :body => "これは私の初めての投稿です。よろしくお願いします。" },
  { :id => 1, :user_id => 1, :title => "初めての投稿", :body => "これは私の初めての投稿です。よろしくお願いします。" },
  { :id => 5, :user_id => 2, :title => "お気に入りの映画", :body => "私のお気に入りの映画は'ジブリ'です。ハク様!!!" },
  { :id => 12, :user_id => 5, :title => "休日の過ごし方", :body => "休日は友人と一緒に過ごすことが多いです。友人と一緒に時間を過ごすことは、私にとって非常に大切な時間です。" },
  { :id => 13, :user_id => 6, :title => "新年の抱負", :body => "新年が始まり、今年は健康に気をつけることを決意しました。" },
  { :id => 17, :user_id => 6, :title => "お気に入りのレストラン", :body => "私のお気に入りのレストランは「銀座寿司」です。彼らの寿司は絶品です。" },
  { :id => 14, :user_id => 6, :title => "お気に入りのアーティスト", :body => "私のお気に入りのアーティストはBTSです。彼らの音楽は心地よく、元気をもらえます。" },
  { :id => 15, :user_id => 6, :title => "最近見た映画", :body => "最近見た映画は「キングダム」でした。" },
  { :id => 6, :user_id => 3, :title => "読書のススメ", :body => "最近読んだ本で感動したものがあります。皆さんにもおすすめします。" },
  { :id => 16, :user_id => 6, :title => "新しい本", :body => "最近、新しい本を読み始めました。それはミステリー小説で、とても面白いです！" },
  { :id => 22, :user_id => 8, :title => "週末の過ごし方", :body => "週末は友人と一緒に映画を見ることが多いです。リラックスする時間が必要ですね。" },
  { :id => 23, :user_id => 8, :title => "お気に入りの本", :body => "私のお気に入りの本は「ハリーポッター」シリーズです。何度読んでも飽きません。" },
  { :id => 2, :user_id => 1, :title => "日常の出来事", :body => "今日は公園で散歩をしました。とても気持ちが良かったです。" },
  { :id => 26, :user_id => 9, :title => "新しい趣味", :body => "最近、新しい趣味として写真撮影を始めました。癒されます。" },
  { :id => 18, :user_id => 7, :title => "新しい映画", :body => "最近見た映画は「アベンジャーズ：エンドゲーム」でした。非常に感動しました！" },
  { :id => 19, :user_id => 7, :title => "新年の抱負", :body => "新年が始まり、今年は新しいスキルを習得することを決意しました。" },
  { :id => 29, :user_id => 10, :title => "お気に入りの映画", :body => "私のお気に入りの映画は'スターウォーズ'シリーズです。アイアムユアファザー！" },
  { :id => 28, :user_id => 10, :title => "日常の出来事", :body => "今日は公園でピクニックをしました。とても楽しかったです。" },
  { :id => 24, :user_id => 9, :title => "旅行の思い出", :body => "先月、友人と旅行に行きました。素晴らしい思い出ができました。" },
  { :id => 30, :user_id => 10, :title => "読書のススメ", :body => "最近読んだ本で感動したものがあります。皆さんにもおすすめします。" },
  { :id => 9, :user_id => 4, :title => "仕事の話", :body => "仕事で新しいプロジェクトを任されました。頑張ります！" },
  { :id => 10, :user_id => 5, :title => "週末の過ごし方", :body => "週末は家でゆっくり過ごすことが多いです。リラックスする時間が必要ですね。" },
  { :id => 11, :user_id => 5, :title => "最近のレシピ", :body => "最近、気になってたレシピを試してみました。チキンカレー上手にできました！" },
]

posts.each do |post|
  Post.create!(post)
end

comments = [
  { :id => 1, :user_id => 1, :post_id => 21, :content => "投稿に対してのコメント"},  
  { :id => 2, :user_id => 2, :post_id => 3, :content => "新しいレストラン、聞いてみます！" },
  { :id => 3, :user_id => 3, :post_id => 4, :content => "家族での旅行、素敵ですね！" },
  { :id => 4, :user_id => 4, :post_id => 7, :content => "イベントは何でしたか？" },
  { :id => 5, :user_id => 5, :post_id => 8, :content => "絵を描くのは楽しいですよね！" },
  { :id => 6, :user_id => 6, :post_id => 20, :content => "Taylor Swiftの曲、私も好きです!" },
  { :id => 7, :user_id => 7, :post_id => 21, :content => "新しい仕事、頑張ってください！" },
  { :id => 8, :user_id => 8, :post_id => 25, :content => "そのレストラン、試してみます！" },
  { :id => 9, :user_id => 9, :post_id => 27, :content => "初めての投稿、楽しみにしています！" },
  { :id => 10, :user_id => 10, :post_id => 1, :content => "初めての投稿、よろしくお願いします！" },
  { :id => 11, :user_id => 1, :post_id => 13, :content => "新年の抱負、素晴らしいですね！" },
{ :id => 12, :user_id => 2, :post_id => 17, :content => "「銀座寿司」、次に行くとき試してみます！" },
{ :id => 13, :user_id => 3, :post_id => 14, :content => "BTSの音楽、私も好きです!" },
{ :id => 14, :user_id => 4, :post_id => 15, :content => "「スパイダーマン：ノー・ウェイ・ホーム」、面白いですよね！" },
{ :id => 15, :user_id => 5, :post_id => 6, :content => "その本、読んでみます!" },
{ :id => 16, :user_id => 6, :post_id => 16, :content => "ミステリー小説、面白そうですね！" },
{ :id => 17, :user_id => 7, :post_id => 22, :content => "友人と映画を見るのは楽しいですよね！" },
{ :id => 18, :user_id => 8, :post_id => 23, :content => "「ハリーポッター」シリーズ、私も大好きです！" },
{ :id => 19, :user_id => 9, :post_id => 2, :content => "公園での散歩、素敵ですね！" },
{ :id => 20, :user_id => 10, :post_id => 26, :content => "写真撮影、楽しいですよね！" },
{ :id => 21, :user_id => 1, :post_id => 29, :content => "'スターウォーズ'シリーズ、私も大好きです！" },
{ :id => 22, :user_id => 2, :post_id => 28, :content => "公園でのピクニック、楽しいですよね！" },
{ :id => 23, :user_id => 3, :post_id => 24, :content => "友人との旅行、素晴らしい思い出になりますね！" },
{ :id => 24, :user_id => 4, :post_id => 30, :content => "その本、読んでみます！" },
{ :id => 25, :user_id => 5, :post_id => 9, :content => "新しいプロジェクト、頑張ってください！" },
{ :id => 26, :user_id => 6, :post_id => 10, :content => "家でゆっくり過ごすのは大切ですね！" },
{ :id => 27, :user_id => 7, :post_id => 11, :content => "チキンカレー、美味しそうですね！" },
{ :id => 28, :user_id => 8, :post_id => 29, :content => "'スターウォーズ'シリーズ、次に見てみます！" },
{ :id => 29, :user_id => 9, :post_id => 28, :content => "公園でのピクニック、次にやってみます！" },
{ :id => 30, :user_id => 10, :post_id => 24, :content => "友人との旅行、楽しみにしています！" },
{ :id => 31, :user_id => 1, :post_id => 12, :content => "友人と過ごす時間、大切ですよね！" },
{ :id => 32, :user_id => 2, :post_id => 13, :content => "健康に気をつけるのは大切ですね！" },
{ :id => 33, :user_id => 3, :post_id => 17, :content => "「銀座寿司」、次に行くとき試してみます！" },
{ :id => 34, :user_id => 4, :post_id => 14, :content => "BTSの音楽、私も好きです!" },
{ :id => 35, :user_id => 5, :post_id => 15, :content => "「スパイダーマン：ノー・ウェイ・ホーム」、見てみたいです！" },
{ :id => 36, :user_id => 6, :post_id => 6, :content => "その本、読んでみます！" },
{ :id => 37, :user_id => 7, :post_id => 16, :content => "ミステリー小説、面白そうですね！" },
{ :id => 38, :user_id => 8, :post_id => 22, :content => "友人と映画を見るのは楽しいですよね！" },
{ :id => 39, :user_id => 9, :post_id => 23, :content => "「ハリーポッター」シリーズ、私も大好きです!" },
{ :id => 40, :user_id => 10, :post_id => 2, :content => "公園での散歩、素敵ですね！" },
{ :id => 41, :user_id => 1, :post_id => 3, :content => "新しくオープンしたレストラン、次に行くとき試してみます！" },
{ :id => 42, :user_id => 2, :post_id => 4, :content => "家族での旅行、素晴らしい思い出になりますね！" },
{ :id => 43, :user_id => 3, :post_id => 7, :content => "友人とのイベント、楽しいですよね！" },
{ :id => 44, :user_id => 4, :post_id => 8, :content => "絵を描くのは楽しいですよね！" },
{ :id => 45, :user_id => 5, :post_id => 20, :content => "Taylor Swiftの音楽、私も好きです!" },
{ :id => 46, :user_id => 6, :post_id => 21, :content => "新しい仕事、頑張ってください！" },
{ :id => 47, :user_id => 7, :post_id => 25, :content => "そのレストラン、試してみます！" },
{ :id => 48, :user_id => 8, :post_id => 3, :content => "新しくオープンしたレストラン、次に行くとき試してみます！" },
{ :id => 49, :user_id => 9, :post_id => 4, :content => "家族での旅行、素晴らしい思い出になりますね！" },
{ :id => 50, :user_id => 10, :post_id => 7, :content => "友人とのイベント、楽しいですよね！" }]

comments.each do |comment|
  Comment.create!(comment)
end

likes = [
  { :id => 1, :user_id => 1, :post_id => 21},
  { :id => 2, :user_id => 2, :post_id => 1 },
  { :id => 3, :user_id => 3, :post_id => 2 },
  { :id => 4, :user_id => 4, :post_id => 3 },
  { :id => 5, :user_id => 5, :post_id => 4 },
  { :id => 6, :user_id => 6, :post_id => 5 },
  { :id => 7, :user_id => 7, :post_id => 6 },
  { :id => 8, :user_id => 8, :post_id => 7 },
  { :id => 9, :user_id => 9, :post_id => 8 },
  { :id => 10, :user_id => 10, :post_id => 9 },
  { :id => 11, :user_id => 1, :post_id => 10 },
  { :id => 12, :user_id => 2, :post_id => 11 },
  { :id => 13, :user_id => 3, :post_id => 12 },
  { :id => 14, :user_id => 4, :post_id => 13 },
  { :id => 15, :user_id => 5, :post_id => 14 },
  { :id => 16, :user_id => 6, :post_id => 15 },
  { :id => 17, :user_id => 7, :post_id => 16 },
  { :id => 18, :user_id => 8, :post_id => 17 },
  { :id => 19, :user_id => 9, :post_id => 18 },
  { :id => 20, :user_id => 10, :post_id => 19 },
  { :id => 21, :user_id => 10, :post_id => 20 },
  { :id => 22, :user_id => 9, :post_id => 21 },
  { :id => 23, :user_id => 8, :post_id => 22 },
  { :id => 24, :user_id => 7, :post_id => 23 },
  { :id => 25, :user_id => 6, :post_id => 24 },
  { :id => 26, :user_id => 5, :post_id => 25 },
  { :id => 27, :user_id => 4, :post_id => 26 },
  { :id => 28, :user_id => 3, :post_id => 27 },
  { :id => 29, :user_id => 2, :post_id => 28 },
  { :id => 30, :user_id => 1, :post_id => 29 },
]

likes.each do |like|
  Like.create!(like)
end
