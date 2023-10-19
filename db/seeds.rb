# frozen_string_literal: true

PostCategory.destroy_all
PostTag.destroy_all
Category.destroy_all
Tag.destroy_all

User.destroy_all
Post.destroy_all
Comment.destroy_all
Like.destroy_all
Practice.destroy_all
Work.destroy_all
Chapter.destroy_all


users = [
  { id: 1, password: 'xxxxxxxxxx', email: 'john@example.com', name: 'John' },
  { id: 2, password: 'xxxxxxxxxx', email: 'emily@example.com', name: 'Emily' },
  { id: 3, password: 'xxxxxxxxxx', email: 'steve@example.com', name: 'Steve' },
  { id: 4, password: 'xxxxxxxxxx', email: 'michael@example.com', name: 'Michael' },
  { id: 5, password: 'xxxxxxxxxx', email: 'anderson@example.com', name: 'Anderson' },
  { id: 6, password: 'xxxxxxxxxx', email: 'George@example.com', name: 'George' },
  { id: 7, password: 'xxxxxxxxxx', email: 'Lily@example.com', name: 'Lily' },
  { id: 8, password: 'xxxxxxxxxx', email: 'Dudley@example.com', name: 'Dudley' },
  { id: 9, password: 'xxxxxxxxxx', email: 'Luna@example.com', name: 'Luna' },
  { id: 10, password: 'xxxxxxxxxx', email: 'Bill@example.com', name: 'Bill' }
]

users.each do |user|
  User.create!(user)
end

posts = [
  { id: 3, user_id: 1, title: '美味しいレストラン', body: '最近、新しくオープンしたレストランに行きました。料理がとても美味しかったです。' },
  { id: 4, user_id: 2, title: '旅行の思い出', body: '先月、家族で旅行に行きました。素晴らしい思い出ができました。' },
  { id: 7, user_id: 3, title: '楽しかったイベント', body: '先週末、友人とイベントに参加しました。とても楽しかったです。' },
  { id: 8, user_id: 4, title: '新しい趣味', body: '最近、新しい趣味として絵を描くことを始めました。癒されます。' },
  { id: 20, user_id: 7, title: 'お気に入りのアーティスト', body: '私のお気に入りのアーティストはTaylor Swiftです。彼女の音楽は心地よく、元気をもらえます。' },
  { id: 21, user_id: 8, title: '新しい仕事', body: '最近、新しい仕事を始めました。とてもやりがいがあります。' },
  { id: 25, user_id: 9, title: '美味しいレストラン', body: '最近、新しくオープンしたレストランに行きました。料理がとても美味しかったです。' },
  { id: 27, user_id: 10, title: '初めての投稿', body: 'これは私の初めての投稿です。よろしくお願いします。' },
  { id: 1, user_id: 1, title: '初めての投稿', body: 'これは私の初めての投稿です。よろしくお願いします。' },
  { id: 5, user_id: 2, title: 'お気に入りの映画', body: "私のお気に入りの映画は'ジブリ'です。ハク様!!!" },
  { id: 12, user_id: 5, title: '休日の過ごし方', body: '休日は友人と一緒に過ごすことが多いです。友人と一緒に時間を過ごすことは、私にとって非常に大切な時間です。' },
  { id: 13, user_id: 6, title: '新年の抱負', body: '新年が始まり、今年は健康に気をつけることを決意しました。' },
  { id: 17, user_id: 6, title: 'お気に入りのレストラン', body: '私のお気に入りのレストランは「銀座寿司」です。彼らの寿司は絶品です。' },
  { id: 14, user_id: 6, title: 'お気に入りのアーティスト', body: '私のお気に入りのアーティストはBTSです。彼らの音楽は心地よく、元気をもらえます。' },
  { id: 15, user_id: 6, title: '最近見た映画', body: '最近見た映画は「キングダム」でした。' },
  { id: 6, user_id: 3, title: '読書のススメ', body: '最近読んだ本で感動したものがあります。皆さんにもおすすめします。' },
  { id: 16, user_id: 6, title: '新しい本', body: '最近、新しい本を読み始めました。それはミステリー小説で、とても面白いです！' },
  { id: 22, user_id: 8, title: '週末の過ごし方', body: '週末は友人と一緒に映画を見ることが多いです。リラックスする時間が必要ですね。' },
  { id: 23, user_id: 8, title: 'お気に入りの本', body: '私のお気に入りの本は「ハリーポッター」シリーズです。何度読んでも飽きません。' },
  { id: 2, user_id: 1, title: '日常の出来事', body: '今日は公園で散歩をしました。とても気持ちが良かったです。' },
  { id: 26, user_id: 9, title: '新しい趣味', body: '最近、新しい趣味として写真撮影を始めました。癒されます。' },
  { id: 18, user_id: 7, title: '新しい映画', body: '最近見た映画は「アベンジャーズ：エンドゲーム」でした。非常に感動しました！' },
  { id: 19, user_id: 7, title: '新年の抱負', body: '新年が始まり、今年は新しいスキルを習得することを決意しました。' },
  { id: 29, user_id: 10, title: 'お気に入りの映画', body: "私のお気に入りの映画は'スターウォーズ'シリーズです。アイアムユアファザー！" },
  { id: 28, user_id: 10, title: '日常の出来事', body: '今日は公園でピクニックをしました。とても楽しかったです。' },
  { id: 24, user_id: 9, title: '旅行の思い出', body: '先月、友人と旅行に行きました。素晴らしい思い出ができました。' },
  { id: 30, user_id: 10, title: '読書のススメ', body: '最近読んだ本で感動したものがあります。皆さんにもおすすめします。' },
  { id: 9, user_id: 4, title: '仕事の話', body: '仕事で新しいプロジェクトを任されました。頑張ります！' },
  { id: 10, user_id: 5, title: '週末の過ごし方', body: '週末は家でゆっくり過ごすことが多いです。リラックスする時間が必要ですね。' },
  { id: 11, user_id: 5, title: '最近のレシピ', body: '最近、気になってたレシピを試してみました。チキンカレー上手にできました！' }
]

posts.each do |post|
  Post.create!(post)
end

comments = [
  { id: 1, user_id: 1, post_id: 21, content: '投稿に対してのコメント' },
  { id: 2, user_id: 2, post_id: 3, content: '新しいレストラン、聞いてみます！' },
  { id: 3, user_id: 3, post_id: 4, content: '家族での旅行、素敵ですね！' },
  { id: 4, user_id: 4, post_id: 7, content: 'イベントは何でしたか？' },
  { id: 5, user_id: 5, post_id: 8, content: '絵を描くのは楽しいですよね！' },
  { id: 6, user_id: 6, post_id: 20, content: 'Taylor Swiftの曲、私も好きです!' },
  { id: 7, user_id: 7, post_id: 21, content: '新しい仕事、頑張ってください！' },
  { id: 8, user_id: 8, post_id: 25, content: 'そのレストラン、試してみます！' },
  { id: 9, user_id: 9, post_id: 27, content: '初めての投稿、楽しみにしています！' },
  { id: 10, user_id: 10, post_id: 1, content: '初めての投稿、よろしくお願いします！' },
  { id: 11, user_id: 1, post_id: 13, content: '新年の抱負、素晴らしいですね！' },
  { id: 12, user_id: 2, post_id: 17, content: '「銀座寿司」、次に行くとき試してみます！' },
  { id: 13, user_id: 3, post_id: 14, content: 'BTSの音楽、私も好きです!' },
  { id: 14, user_id: 4, post_id: 15, content: '「スパイダーマン：ノー・ウェイ・ホーム」、面白いですよね！' },
  { id: 15, user_id: 5, post_id: 6, content: 'その本、読んでみます!' },
  { id: 16, user_id: 6, post_id: 16, content: 'ミステリー小説、面白そうですね！' },
  { id: 17, user_id: 7, post_id: 22, content: '友人と映画を見るのは楽しいですよね！' },
  { id: 18, user_id: 8, post_id: 23, content: '「ハリーポッター」シリーズ、私も大好きです！' },
  { id: 19, user_id: 9, post_id: 2, content: '公園での散歩、素敵ですね！' },
  { id: 20, user_id: 10, post_id: 26, content: '写真撮影、楽しいですよね！' },
  { id: 21, user_id: 1, post_id: 29, content: "'スターウォーズ'シリーズ、私も大好きです！" },
  { id: 22, user_id: 2, post_id: 28, content: '公園でのピクニック、楽しいですよね！' },
  { id: 23, user_id: 3, post_id: 24, content: '友人との旅行、素晴らしい思い出になりますね！' },
  { id: 24, user_id: 4, post_id: 30, content: 'その本、読んでみます！' },
  { id: 25, user_id: 5, post_id: 9, content: '新しいプロジェクト、頑張ってください！' },
  { id: 26, user_id: 6, post_id: 10, content: '家でゆっくり過ごすのは大切ですね！' },
  { id: 27, user_id: 7, post_id: 11, content: 'チキンカレー、美味しそうですね！' },
  { id: 28, user_id: 8, post_id: 29, content: "'スターウォーズ'シリーズ、次に見てみます！" },
  { id: 29, user_id: 9, post_id: 28, content: '公園でのピクニック、次にやってみます！' },
  { id: 30, user_id: 10, post_id: 24, content: '友人との旅行、楽しみにしています！' },
  { id: 31, user_id: 1, post_id: 12, content: '友人と過ごす時間、大切ですよね！' },
  { id: 32, user_id: 2, post_id: 13, content: '健康に気をつけるのは大切ですね！' },
  { id: 33, user_id: 3, post_id: 17, content: '「銀座寿司」、次に行くとき試してみます！' },
  { id: 34, user_id: 4, post_id: 14, content: 'BTSの音楽、私も好きです!' },
  { id: 35, user_id: 5, post_id: 15, content: '「スパイダーマン：ノー・ウェイ・ホーム」、見てみたいです！' },
  { id: 36, user_id: 6, post_id: 6, content: 'その本、読んでみます！' },
  { id: 37, user_id: 7, post_id: 16, content: 'ミステリー小説、面白そうですね！' },
  { id: 38, user_id: 8, post_id: 22, content: '友人と映画を見るのは楽しいですよね！' },
  { id: 39, user_id: 9, post_id: 23, content: '「ハリーポッター」シリーズ、私も大好きです!' },
  { id: 40, user_id: 10, post_id: 2, content: '公園での散歩、素敵ですね！' },
  { id: 41, user_id: 1, post_id: 3, content: '新しくオープンしたレストラン、次に行くとき試してみます！' },
  { id: 42, user_id: 2, post_id: 4, content: '家族での旅行、素晴らしい思い出になりますね！' },
  { id: 43, user_id: 3, post_id: 7, content: '友人とのイベント、楽しいですよね！' },
  { id: 44, user_id: 4, post_id: 8, content: '絵を描くのは楽しいですよね！' },
  { id: 45, user_id: 5, post_id: 20, content: 'Taylor Swiftの音楽、私も好きです!' },
  { id: 46, user_id: 6, post_id: 21, content: '新しい仕事、頑張ってください！' },
  { id: 47, user_id: 7, post_id: 25, content: 'そのレストラン、試してみます！' },
  { id: 48, user_id: 8, post_id: 3, content: '新しくオープンしたレストラン、次に行くとき試してみます！' },
  { id: 49, user_id: 9, post_id: 4, content: '家族での旅行、素晴らしい思い出になりますね！' },
  { id: 50, user_id: 10, post_id: 7, content: '友人とのイベント、楽しいですよね！' }
]

comments.each do |comment|
  Comment.create!(comment)
end

likes = [
  { id: 1, user_id: 1, post_id: 21 },
  { id: 2, user_id: 2, post_id: 1 },
  { id: 3, user_id: 3, post_id: 2 },
  { id: 4, user_id: 4, post_id: 3 },
  { id: 5, user_id: 5, post_id: 4 },
  { id: 6, user_id: 6, post_id: 5 },
  { id: 7, user_id: 7, post_id: 6 },
  { id: 8, user_id: 8, post_id: 7 },
  { id: 9, user_id: 9, post_id: 8 },
  { id: 10, user_id: 10, post_id: 9 },
  { id: 11, user_id: 1, post_id: 10 },
  { id: 12, user_id: 2, post_id: 11 },
  { id: 13, user_id: 3, post_id: 12 },
  { id: 14, user_id: 4, post_id: 13 },
  { id: 15, user_id: 5, post_id: 14 },
  { id: 16, user_id: 6, post_id: 15 },
  { id: 17, user_id: 7, post_id: 16 },
  { id: 18, user_id: 8, post_id: 17 },
  { id: 19, user_id: 9, post_id: 18 },
  { id: 20, user_id: 10, post_id: 19 },
  { id: 21, user_id: 10, post_id: 20 },
  { id: 22, user_id: 9, post_id: 21 },
  { id: 23, user_id: 8, post_id: 22 },
  { id: 24, user_id: 7, post_id: 23 },
  { id: 25, user_id: 6, post_id: 24 },
  { id: 26, user_id: 5, post_id: 25 },
  { id: 27, user_id: 4, post_id: 26 },
  { id: 28, user_id: 3, post_id: 27 },
  { id: 29, user_id: 2, post_id: 28 },
  { id: 30, user_id: 1, post_id: 29 }
]

likes.each do |like|
  Like.create!(like)
end

categories = [
  { id: 1, name: '料理' },
  { id: 2, name: '思い出' },
  { id: 3, name: 'イベント' },
  { id: 4, name: '目標' },
  { id: 5, name: '映画' },
  { id: 6, name: '趣味' },
  { id: 7, name: '仕事' },
]


post_categories = [
  { id: 1, post_id: 1, category_id: 4 },
  { id: 2, post_id: 2, category_id: 2},
  { id: 3, post_id: 3, category_id: 1},
  { id: 4, post_id: 4, category_id: 2},
  { id: 5, post_id: 5, category_id: 5},
  { id: 6, post_id: 6, category_id: 6},
  { id: 7, post_id: 7, category_id: 3},
  { id: 8, post_id: 8, category_id: 6},
  { id: 9, post_id: 9, category_id: 6},
  { id: 10, post_id: 10, category_id: 2},
  { id: 11, post_id: 11, category_id: 1},
  { id: 12, post_id: 12, category_id: 6},
  { id: 13, post_id: 13, category_id: 4},
  { id: 14, post_id: 14, category_id: 6},
  { id: 15, post_id: 15, category_id: 5},
  { id: 16, post_id: 16, category_id: 6},
  { id: 17, post_id: 17, category_id: 1},
  { id: 18, post_id: 18, category_id: 5},
  { id: 19, post_id: 19, category_id: 4},
  { id: 20, post_id: 20, category_id: 6},
  { id: 21, post_id: 21, category_id: 7},
  { id: 22, post_id: 22, category_id: 6},
  { id: 23, post_id: 23, category_id: 5},
  { id: 24, post_id: 24, category_id: 2},
  { id: 25, post_id: 25, category_id: 1},
  { id: 26, post_id: 26, category_id: 6},
  { id: 27, post_id: 27, category_id: 2},
  { id: 28, post_id: 28, category_id: 2},
  { id: 29, post_id: 29, category_id: 5},
  { id: 30, post_id: 30, category_id: 6}
]


categories.each do |category|
  Category.create!(category)
end

post_categories.each do |category|
  PostCategory.create!(category)
end


tags = [
  { id: 1, name: 'レストラン' },
  { id: 2, name: '新作' },
  { id: 3, name: '家族旅行' },
  { id: 4, name: '週末' },
  { id: 5, name: 'アーティスト' },
  { id: 6, name: '初投稿' },
  { id: 7, name: 'ジブリ' },
  { id: 8, name: '新年' },
  { id: 9, name: '健康' },
  { id: 10, name: '寿司' },
  { id: 11, name: 'キングダム' },
  { id: 12, name: '小説' },
  { id: 13, name: 'リラックス' },
  { id: 14, name: 'ハリーポッター' },
  { id: 15, name: 'アベンジャーズ' },
  { id: 16, name: 'スターウォーズ' },
  { id: 17, name: 'ピクニック' },
  { id: 18, name: 'チキンカレー' },
  { id: 19, name: 'レシピ' },
  { id: 20, name: '新年' }
]


post_tags = [
  { id: 1, post_id: 3, tag_id: 1 },
  { id: 2, post_id: 4, tag_id: 3 },
  { id: 3, post_id: 5, tag_id: 5 },
  { id: 4, post_id: 6, tag_id: 6 },
  { id: 5, post_id: 7, tag_id: 1 },
  { id: 6, post_id: 8, tag_id: 6 },
  { id: 7, post_id: 9, tag_id: 7 },
  { id: 8, post_id: 13, tag_id: 9 },
  { id: 9, post_id: 14, tag_id: 5 },
  { id: 10, post_id: 15, tag_id: 11 },
  { id: 11, post_id: 16, tag_id: 12 },
  { id: 12, post_id: 18, tag_id: 13 },
  { id: 13, post_id: 19, tag_id: 14 },
  { id: 14, post_id: 20 , tag_id: 5 },
  { id: 15, post_id: 21 , tag_id: 9 },
  { id: 16, post_id: 22 , tag_id: 6 },
  { id: 17, post_id: 23 , tag_id: 14 },
  { id: 18, post_id: 24 , tag_id: 4 },
  { id: 19, post_id: 25 , tag_id: 1 },
  { id: 20, post_id: 26 , tag_id: 8 },
  { id: 21, post_id: 27 , tag_id: 6 },
  { id: 22, post_id: 28 , tag_id: 6 },
  { id: 23, post_id: 29 , tag_id: 6 },
  { id: 24, post_id: 30 , tag_id: 6 },
  { id: 25, post_id: 1 , tag_id: 6 },
  { id: 26, post_id: 2 , tag_id: 6 },
  { id: 27, post_id: 10 , tag_id: 6 },
  { id: 28, post_id: 11 , tag_id: 6 },
  { id: 29, post_id: 12 , tag_id: 6 },
  { id: 30, post_id: 17 , tag_id: 6 }
]

tags.each do |tag|
  Tag.create!(tag)
end

post_tags.each do |tag|
  PostTag.create!(tag)
end


works = [
  { id: 1, name: 'トライアル編', description: '操作に慣れてみよう!', slug: 'trial', order_number: 1 },
  { id: 2, name: '初級編', description: 'current_userを使ってデータを取得してみよう!', slug: 'basic', order_number: 1 },
  { id: 3, name: '中級編', description: 'current_userを使って複雑なデータを取得してみよう!', slug: 'intermediate',
    order_number: 1 }
]

works.each do |work|
  Work.create!(work)
end

chapters = [
  # トライアル編
  { id: 1, work_id: 1, name: '操作に慣れてみよう!', slug: 'trial', order_number: 2 },
  { id: 2, work_id: 1, name: 'allメソッドを使ってみよう!', slug: 'trial', order_number: 3 },
  { id: 3, work_id: 1, name: 'find_byメソッドを使ってみよう!', slug: 'trial', order_number: 3 },
  { id: 4, work_id: 1, name: '他のデータも取得してみよう!', slug: 'trial', order_number: 3 },
  { id: 5, work_id: 1, name: 'whereメソッドを使ってみよう!', slug: 'trial', order_number: 3 },
  # 初級編
  { id: 20, work_id: 2, name: 'current_userの投稿を取得する', slug: 'basic', order_number: 4 },
  { id: 21, work_id: 2, name: 'current_userのコメントを取得する', slug: 'basic', order_number: 5 },
  { id: 22, work_id: 2, name: 'current_userが投稿した特定のタイトルの投稿を取得する', slug: 'basic', order_number: 1 },
  { id: 23, work_id: 2, name: 'current_userがコメントした特定の内容のコメントを取得する', slug: 'basic', order_number: 2 },
  { id: 24, work_id: 2, name: 'current_userがコメントした投稿を取得する', slug: 'basic', order_number: 3 },
  { id: 25, work_id: 2, name: 'current_userの投稿数を取得する', slug: 'basic', order_number: 3 },
  { id: 26, work_id: 2, name: 'current_userがいいねした特定の投稿を取得する', slug: 'basic', order_number: 3 },
  { id: 27, work_id: 2, name: 'current_userのコメント数を取得する', slug: 'basic', order_number: 3 },
  { id: 28, work_id: 2, name: 'current_userのいいね数を取得する', slug: 'basic', order_number: 3 },
  { id: 29, work_id: 2, name: 'current_userの特定の内容の投稿を取得する', slug: 'basic', order_number: 3 },

  # 中級編
  { id: 40, work_id: 3, name: 'current_userがコメントした全てのユーザーを取得する', slug: 'intermediate', order_number: 1 },
  { id: 41, work_id: 3, name: 'current_userがコメントした投稿の中で最も多くいいねされたものを取得する', slug: 'intermediate',order_number: 2 },
  { id: 42, work_id: 3, name: 'current_userがいいねした全ての投稿の中で最も多くコメントされたものを取得する', slug: 'intermediate',order_number: 2 },
  { id: 43, work_id: 3, name: 'current_userの投稿に紐づくカテゴリを全て取得する', slug: 'intermediate', order_number: 1 },
  { id: 44, work_id: 3, name: 'current_userの投稿に紐づくタグを全て取得する', slug: 'intermediate',order_number: 2 },
  { id: 45, work_id: 3, name: 'current_userの投稿に紐づくタグ数を取得する', slug: 'intermediate',order_number: 2 },
  { id: 46, work_id: 3, name: 'current_userの投稿に紐づくカテゴリ数を取得する', slug: 'intermediate',order_number: 2 },
  { id: 47, work_id: 3, name: 'current_userがコメントした投稿に紐づくタグを全て取得する', slug: 'intermediate',order_number: 2 },
  { id: 48, work_id: 3, name: 'current_userがいいねした投稿に紐づくカテゴリを全て取得する', slug: 'intermediate',order_number: 2 },
  { id: 49, work_id: 3, name: 'current_userがコメントした投稿の中で特定のタグが付けられた投稿をすべて取得する', slug: 'intermediate',order_number: 2 },
]

chapters.each do |chapter|
  Chapter.create!(chapter)
end

practices = [
  # トライアル編
  { id: 1, work_id: 1, chapter_id: 1, user_id: 1, title: '操作に慣れてみよう!',
    question: 'Johnがcurrent_userです。current_userとエディタに書いて実行すれば正解です。', answer: 'current_user', order_number: 1 },
  { id: 2, work_id: 1, chapter_id: 2, user_id: 5, title: 'allメソッドを使ってみよう!',
    question: 'ユーザの一覧を取得してみましょう。', answer: 'User.all', order_number: 2 },
  { id: 3, work_id: 1, chapter_id: 3, user_id: 3, title: 'find_byメソッドを使ってみよう!',
    question: 'ユーザのidが8のレコードを取得してみましょう。', answer: 'User.find_by(id: 8)', order_number: 3 },
  { id: 4, work_id: 1, chapter_id: 4, user_id: 6, title: '他のデータも取得してみよう！',
    question: '投稿の一覧を取得してみましょう。', answer: 'Post.all', order_number: 4 },
  { id: 5, work_id: 1, chapter_id: 5, user_id: 2, title: 'whereメソッドを使ってみよう!',
    question: '投稿のタイトルが【最近のレシピ】に該当するレコードを取得してみましょう。', answer: 'Post.find_by(title: "最近のレシピ")', order_number: 5 },

  # 初級編
  { id: 20, work_id: 2, chapter_id: 20, user_id: 7, title: 'current_userの投稿を取得する',
    question: 'Lilyがcurrent_userです。Lilyの投稿をすべて取得してください', answer: 'current_user.posts', order_number: 4 },
  { id: 21, work_id: 2, chapter_id: 21, user_id: 3, title: 'current_userのコメントを取得する',
    question: 'Steveがcurrent_userです。Steveが書いたコメントをすべて取得してください', answer: 'current_user.comments', order_number: 5 },
  { id: 22, work_id: 2, chapter_id: 22, user_id: 4, title: 'current_userが投稿した特定のタイトルの投稿を取得する',
    question: 'Michaelがcurrent_userです。Michaelが投稿した「仕事の話」のタイトルの投稿を取得してください', answer: 'current_user.posts.where(title: "仕事の話")', order_number: 3 },
  { id: 23, work_id: 2, chapter_id: 23, user_id: 9, title: 'current_userがコメントした特定の内容のコメントを取得する',
    question: 'Lunaがcurrent_userです。Lunaがコメントした「ハリーポッター」シリーズ、私も大好きです!」という内容のコメントを取得してください', answer: 'current_user.comments.where(content: "「ハリーポッター」シリーズ、私も大好きです!")', order_number: 4 },
  { id: 24, work_id: 2, chapter_id: 24, user_id: 1, title: 'current_userがコメントした投稿を取得する',
    question: 'Johnがcurrent_userです。Johnがコメントした投稿をすべて取得してください', answer: 'current_user.commented_posts', order_number: 8 },
  { id: 25, work_id: 2, chapter_id: 25, user_id: 5, title: 'current_userの投稿数を取得する',
    question: 'Andersonがcurrent_userです。Andersonが投稿した件数を取得してください', answer: 'current_user.posts.count', order_number: 3 },
  { id: 26, work_id: 2, chapter_id: 26, user_id: 6, title: 'current_userがいいねした特定の投稿を取得する',
    question: 'Georgeがcurrent_userです。Georgeがいいねした【最近見た映画】という投稿を取得してください', answer: 'current_user.liked_posts.where(title: "最近見た映画")', order_number: 3 },
  { id: 27, work_id: 2, chapter_id: 27, user_id: 1, title: 'current_userのコメント数を取得する',
    question: 'Johnがcurrent_userです。Johnのコメントした数を取得してください', answer: 'current_user.comments.count', order_number: 3 },
  { id: 28, work_id: 2, chapter_id: 28, user_id: 3, title: 'current_userのいいね数を取得する',
    question: 'Steveがcurrent_userです。Steveのいいねした数を取得してください', answer: 'current_user.likes.count', order_number: 3 },
  { id: 29, work_id: 2, chapter_id: 29, user_id: 1, title: 'current_userの特定の内容の投稿を取得する',
    question: 'Johnがcurrent_userです。Johnの【最近、新しくオープンしたレストランに行きました。料理がとても美味しかったです。】の投稿を取得してください', answer: 'current_user.posts.where(body: "最近、新しくオープンしたレストランに行きました。料理がとても美味しかったです。")', order_number: 3 },

  # 中級編
  { id: 40, work_id: 3, chapter_id: 40, user_id: 3, title: 'current_userがコメントした全てのユーザーを取得する',
    question: 'Steveがcurrent_userです。Steveがコメントした全てのユーザーを取得するためには、どのようにコードを書くべきでしょうか？', answer: 'current_user.comments.map { |comment| comment.post.user }.uniq', order_number: 1 },
  { id: 41, work_id: 3, chapter_id: 41, user_id: 10,
    title: 'current_userがコメントした投稿の中で最も多くいいねされた投稿を取得する', question: 'Billがcurrent_userです。Billがコメントした投稿の中で最も多くいいねされたものを取得するためには、どのように書くべきでしょうか？', answer: 'current_user.comments.map(&:post).max_by { |post| post.likes.count }', order_number: 3 },
  { id: 42, work_id: 3, chapter_id: 42, user_id: 5, title: 'current_userがいいねした全ての投稿の中で最も多くコメントされたものを取得する',
    question: 'Andersonがcurrent_userです。Andersonがいいねをした全ての投稿の中で最も多くコメントされたものを取得するためには、どのように書くべきでしょうか？', answer: 'current_user.likes.map(&:post).max_by { |post| post.comments.count }', order_number: 3 },
  { id: 43, work_id: 3, chapter_id: 43, user_id: 1, title: 'current_userの投稿に紐づくカテゴリを全て取得する',
    question: 'Johnがcurrent_userです。Johnに紐づくカテゴリを全て取得してください。', answer: 'current_user.posts.joins(:categories).pluck("categories.name").uniq', order_number: 1 },
  { id: 44, work_id: 3, chapter_id: 44, user_id: 3, title: 'current_userの投稿に紐づくタグを全て取得する',
    question: 'Steveがcurrent_userです。Steveに紐づくタグを全て取得してください。', answer: 'current_user.posts.joins(:tags).pluck("tags.name").uniq', order_number: 1 },
  { id: 45, work_id: 3, chapter_id: 45, user_id: 10,title: 'current_userの投稿に紐づくタグ数を取得する', 
    question: 'Billがcurrent_userです。Billに紐づく投稿の全てのタグの数を取得してください。', answer: 'current_user.posts.joins(:tags).count', order_number: 3 },
  { id: 46, work_id: 3, chapter_id: 46, user_id: 5, title: 'current_userの投稿に紐づくカテゴリ数を取得する',
    question: 'Andersonがcurrent_userです。Andersonに紐づく投稿の全てカテゴリ数を取得してください。', answer: 'current_user.posts.joins(:categories).count', order_number: 3 },
  { id: 47, work_id: 3, chapter_id: 47, user_id: 6, title: 'current_userがコメントした投稿に紐づくタグを全て取得する',
    question: 'Georgeがcurrent_userです。Georgeがコメントした投稿に紐づくタグを全て取得してください。', answer: 'current_user.commented_posts.joins(:tags).pluck("tags.name").uniq', order_number: 3 },
  { id: 48, work_id: 3, chapter_id: 48, user_id: 7, title: 'current_userがいいねした投稿に紐づくカテゴリを全て取得する',
    question: 'Lilyがcurrent_userです。Lilyがコメントした投稿に紐づくタグを全て取得してください。', answer: 'current_user.liked_posts.joins(:categories).pluck("categories.name").uniq', order_number: 3 },
  { id: 49, work_id: 3, chapter_id: 49, user_id: 9, title: 'current_userがコメントした投稿の中で特定のタグが付けられた投稿を全て取得する',
    question: 'Lunaがcurrent_userです。Lunaががコメントした投稿の中で特定のタグが付けられた投稿を全て取得してください。', answer: 'current_user.posts.joins(:categories).where("categories.name = ?", "料理")', order_number: 3 },
]

practices.each do |practice|
  Practice.create!(practice)
end
