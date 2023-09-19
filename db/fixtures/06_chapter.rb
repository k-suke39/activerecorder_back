# frozen_string_literal: true

Chapter.seed(:id,
             # トライアル編
             { id: 1, work_id: 1, name: '操作に慣れてみよう!', slug: 'trial', order_number: 2 },
             { id: 2, work_id: 1, name: 'allメソッドを使ってみよう!', slug: 'trial', order_number: 3 },
             { id: 3, work_id: 1, name: 'find_byメソッドを使ってみよう!', slug: 'trial', order_number: 3 },
             { id: 4, work_id: 1, name: '他のデータも取得してみよう！', slug: 'trial', order_number: 3 },
             { id: 5, work_id: 1, name: 'whereメソッドを使ってみよう!', slug: 'trial', order_number: 3 },
             # 初級編
             { id: 20, work_id: 2, name: 'current_userの投稿を取得する', slug: 'basic', order_number: 4 },
             { id: 21, work_id: 2, name: 'current_userのコメントを取得する', slug: 'basic', order_number: 5 },
             { id: 22, work_id: 2, name: 'current_userが投稿した特定のタイトルの投稿を取得する', slug: 'basic', order_number: 1 },
             { id: 23, work_id: 2, name: 'current_userがコメントした最初の投稿を取得する', slug: 'basic', order_number: 2 },
             { id: 24, work_id: 2, name: 'current_userがコメントした投稿を取得する', slug: 'basic', order_number: 3 },
             { id: 25, work_id: 2, name: 'current_userがいいねした投稿を取得する', slug: 'basic', order_number: 3 },
             { id: 26, work_id: 2, name: 'current_userがいいねした特定の投稿を取得する', slug: 'basic', order_number: 3 },
             # 中級編
             { id: 40, work_id: 3, name: 'current_userがコメントした全てのユーザーを取得する', slug: 'intermediate', order_number: 1 },
             { id: 41, work_id: 3, name: 'current_userがいいねした全ての投稿の中で最も多くコメントされたものを取得する', slug: 'intermediate',
               order_number: 2 },
             { id: 42, work_id: 3, name: 'current_userがコメントした投稿の中で最も多くいいねされたものを取得する', slug: 'intermediate',
               order_number: 2 })
