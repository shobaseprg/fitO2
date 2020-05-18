
# ===================================
# 基礎
# ===================================
lessons_base_1 = 
["テックマスターの利用方法を知ろう",
"Macの使い方を学ぼう",
"必要なアプリケーションを導入しよう",
"クレジットカードを用意しておこう"]

i = 1
lessons_base_1.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:1,base_or_development:0,active:1)
  i += 1
end


lessons_base_2 = 
["Webアプリケーションとは何なのか",
"基礎カリキュラムの全体像",
"学習効率をあげるための発信",
"プログラミング学習のコツと質問の仕方",
"試験の進め方を知ろう（基礎カリキュラム編）",
"ドリルの実施方法を知ろう",
"アプリケーション開発のための環境を整えよう"]

i = 1
lessons_base_2.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:2,base_or_development:0,active:1)
  i += 1
end


lessons_base_3 = 
["HTMLとCSSの役割",
"最低限の文法を身につけよう",
"基本のWebサイトを作ろう1",
"基本のWebサイトを作ろう2",
"基本のWebサイトを作ろう3",
"モダンなWebサイトを作ろう",
"様々な高さや幅の指定方法について知ろう",
"LESSON3 まとめ",
"LESSON3 確認テスト"]

i = 1
lessons_base_3.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:3,base_or_development:0,active:1)
  i += 1
end

lessons_base_4 = 
["Rubyに触れてみよう",
"LESSON4 Linuxのまとめ",
"Rubyの基本的な文法を学ぼう",
"レビュー管理アプリの文字表示まで作ろう",
"レビュー入力機能を作ろう",
"複数の情報を1つにまとめて整理しよう",
"条件分岐を使ってメニュー画面を作ろう",
"メニューを繰り返し表示させよう",
"レビューのまとまりを複数管理しよう",
"選んだレビューを表示しよう",
"LESSON4 まとめ",
"LESSON4 確認テスト"]

i = 1
lessons_base_4.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:4,base_or_development:0,active:1)
  i += 1
end

lessons_base_5 = 
["オブジェクトの設計図となるものを作ろう",
"オブジェクト共通の情報と個別の情報を定義しよう読了",
"クラスの情報を継承したクラスを作ろう",
"LESSON5 確認テスト"]

i = 1
lessons_base_5.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:5,base_or_development:0,active:1)
  i += 1
end

lessons_base_6 = 
["フレームワークで簡単にアプリケーションの雛形を作ろう",
"リクエストの行き先を決めよう",
"リクエストを処理しよう",
"レスポンスに使う見た目を作ろう",
"データベースにデータの保存場所を作ろう",
"保存したデータを表示しよう",
"保存の仕組みを理解しよう",
"フォームを追加しよう",
"フォームから投稿できるようにしよう",
"LESSON6 まとめ",
"LESSON6 確認テスト"
]

i = 1
lessons_base_6.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:6,base_or_development:0,active:1)
  i += 1
end

lessons_base_7 = 
["新しいアプリケーションを立ち上げよう",
"データを保存して表示してみよう",
"resourcesでルーティングを設定しよう",
"ブログを投稿できるようにしよう",
"ブログの本文を読めるようにしよう",
"ブログを編集削除できるようにしよう",
"ユーザーを登録する準備をしよう",
"ユーザーを登録してみよう",
"ブログの投稿者がわかるようにしよう",
"マイページで1人の著者のブログを一覧できるようにしよう",
"投稿したユーザー自身だけ編集・削除を許可しよう",
"部分テンプレートを実装しよう",
"エラー解決の方法を学ぼう",
"LESSON7 確認テスト"]

i = 1
lessons_base_7.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:7,base_or_development:0,active:1)
  i += 1
end

lessons_base_8 = 
["新しいアプリケーションを立ち上げよう",
"データを表示できるようにしよう",
"データを保存できるようにしよう",
"データを編集・削除できるようにしよう",
"詳細表示をできるようにしよう",
"ユーザーを登録できるようにしよう",
"マイページを実装しよう",
"ユーザーがログインしている時にだけ許可しよう",
"データの表示を工夫しよう",
"コメント機能を実装しよう",
"投稿検索機能を実装しよう",
"LESSON8 確認テスト"]

i = 1
lessons_base_8.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:8,base_or_development:0,active:1)
  i += 1
end

lessons_base_9 = 
["復習期間を有効活用する方法",
"HTML/CSSでマークアップしよう",
"Rubyの基礎をドリルで磨こう",
"ミニアプリを自力で作成しよう",
"【補足】試験対策(HTML)",
"【補足】試験対策(Ruby)"]

i = 1
lessons_base_9.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:9,base_or_development:0,active:1)
  i += 1
end

# ===================================
# 応用
# ===================================
lessons_development_1 = 
["学習効率をあげるための発信",
"応用カリキュラムでの質問方法について",
"試験の進め方を知ろう（応用カリキュラム編）",
"個人アプリ開発"]

i = 1
lessons_development_1.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:1,base_or_development:1,active:1)
  i += 1
end


lessons_development_2 = 
["エンジニアに必要な検索力を身につけよう",
"読みやすいコードを書こう",
"リファクタリング",
"正規表現"]

i = 1
lessons_development_2.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:2 ,base_or_development:1,active:1)
  i += 1
end

lessons_development_3  = 
["JavaScriptの概要について学ぼう",
"JavaScriptの基本文法を学ぼう",
"JavaScriptで画面上の表示を変えてみよう",
"JavaScriptのライブラリを使ってみよう",
"jQueryを使ってブラウザ情報を取得して操作しよう",
"jQueryを使って検索機能を実装しよう"]

i = 1
lessons_development_3.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:3 ,base_or_development:1,active:1)
  i += 1
end

lessons_development_4  = 
["なぜ開発にGitやGitHubを使うのか",
"Gitの基礎を学ぼう",
"GitHubを使ってみよう",
"GitHub Desktopを使ってみよう",
"GitHubにおける開発フローを実践しよう",
"Git/GitHubトラブルシューティング"]

i = 1
lessons_development_4.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:4 ,base_or_development:1,active:1)
  i += 1
end

lessons_development_5 = 
["ChatSpace 概要",
"ChatSpace 実装に入るための準備",
"よくある指摘",
"【補足】form_forとform_with"]

i = 1
lessons_development_5.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:5 ,base_or_development:1,active:1)
  i += 1
end

lessons_development_6 = 
["データベースとSQL",
"データベース構造の操作",
"データの登録/更新/削除",
"データの検索 基礎読了",
"データの検索 発展"]

i = 1
lessons_development_6.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:6 ,base_or_development:1,active:1)
  i += 1
end

lessons_development_7  = 
["データベース設計の基礎",
"テーブルの構成要素",
"正規化を学習する",
"【補足】様々なアプリケーションのデータベース設計をしてみよう",
"ChatSpaceのデータベース設計"]

i = 1
lessons_development_7.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:7 ,base_or_development:1,active:1)
  i += 1
end

lessons_development_8 = 
["Sassを学習しよう",
"BEMを学習しよう",
"ChatSpace Hamlの導入",
"Sassとhamlを使って、簡単なマークアップをしてみよう",
"ChatSpace フロント実装",
"【補足】フロント実装がわからなくなった時の対処方法"]

i = 1
lessons_development_8.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:8 ,base_or_development:1,active:1)
  i += 1
end


lessons_development_9  = 
["ChatSpace ユーザー管理",
"ChatSpaceグループ作成",
"ChatSpace メッセージ送信機能の実装",
"テストの概念を学ぼう",
"単体テスト基礎",
"単体テスト応用",
"コントローラのテスト",
"ChatSpace 投稿機能のテスト",
"統合テスト"]

i = 1
lessons_development_9.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:9 ,base_or_development:1,active:1)
  i += 1
end


lessons_development_10  = 
["Ruby on Railsの中でJavaScript/jQueryを使う",
"Pictweetのコメント機能の非同期通信化",
"【補足】簡単なアプリケーションでajaxを学ぼう",
"Pictweetでインクリメンタルサーチを実装しよう",
"ChatSpace メッセージ送信の非同期化",
"ChatSpace インクリメンタルサーチ実装",
"ChatSpace 自動更新機能"]

i = 1
lessons_development_10.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:10 ,base_or_development:1,active:1)
  i += 1
end


lessons_development_11  = 
["Pアドレス読了",
"Linuxコマンド、パーミッション、ログ出力・見方読了",
"SSH"]

i = 1
lessons_development_11.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:11 ,base_or_development:1,active:1)
  i += 1
end


lessons_development_12  = 
["AWSカリキュラム概要",
"クラウドについての基礎知識",
"AWSのアカウント作成",
"EC2インスタンスの生成",
"Linuxサーバ構築",
"MySQLの設定読了",
"Railsを起動する",
"Nginx経由でRailsにアクセスする",
"Capistranoによるデプロイ作業の自動化",
"S3を使って画像をアップロードする①",
"S3を使って画像をアップロードする②",
"【補足資料】S3へのアップロードができない時のチェックポイント"]

i = 1
lessons_development_12.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:12 ,base_or_development:1,active:1)
  i += 1
end

lessons_development_13  = 
["発展的な内容にチャレンジしよう",
"オブジェクト指向",
"クラスとインスタンスについてもっと学ぼう",
"具体例を通してリファクタリングを学ぶ",
"モデルの便利な機能を利用しよう",
"例外処理",
"EC2へのアクセス分散と自動拡張",
"情報セキュリティの概要を理解しよう",
"情報セキュリティの基礎を学ぼう",
"XSSについて理解しよう",
"SQLインジェクションについて理解しよう",
"CSRFについて理解しよう",
"セッションハイジャックについて理解しよう"]

i = 1
lessons_development_13.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:13 ,base_or_development:1,active:1)
  i += 1
end

lessons_development_14  = 
["スクラムを用いたアジャイル開発について知ろう",
"最終課題で意識すべき点について知ろう",
"最終課題開発に取り掛かろう",
"コードレビューの流れを把握しよう",
"コードレビューをしよう",
"Siderを導入しよう",
"RailsアプリケーションへのBasic認証導入",
"Github リポジトリのフォーク",
"最終課題説明文を作成しよう"]

i = 1
lessons_development_14.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:14 ,base_or_development:1,active:1)
  i += 1
end

# ===================================
# 最終課題
# ===================================
lessons_last_task  = 
["レポジトリ作成",
"デプロイ",
"商品購入",
"クレジットカード登録",
"商品出品",
"商品詳細",
"商品編集",
"商品削除",
"DB設計",
"トップページ",
"マイページ",
"ユーザー登録",
"商品一覧",
"カテゴリ機能",
"商品検索レベル１",
"商品検索レベル２",
"コメント機能",
"パンくず",
"お気に入り機能"]

i = 1
lessons_last_task.each do |lesson|
  Lesson.create(sub_number:i,title:lesson,lesson_no:1 ,base_or_development:2,active:1)
end

# ===================================
# テストユーザー
# ===================================

User.create(email:"1@gmail.com",password:"1111111a",name:"1taro",slack:"1taro_slack",period: 50,style:"1",team_id:"A",output_times:0 ,on_off:0)
User.create(email:"2@gmail.com",password:"1111111a",name:"2jiro",slack:"2jiro_slack",period: 55,style:"2",team_id:"B",output_times:0 ,on_off:0)
User.create(email:"3@gmail.com",password:"1111111a",name:"3saburo",slack:"3saburo_slack",period: 52,style:"2",team_id:"C",output_times:0 ,on_off:0)
User.create(email:"4@gmail.com",password:"1111111a",name:"4siro",slack:"4siro_slack",period: 56,style:"2",team_id:"D",output_times:0 ,on_off:0)
User.create(email:"5@gmail.com",password:"1111111a",name:"5goro",slack:"5goro_slack",period: 60,style:"1",team_id:"E",output_times:0 ,on_off:0)
User.create(email:"6@gmail.com",password:"1111111a",name:"6rokuro",slack:"6rokuro_slack",period: 75,style:"2",team_id:"F",output_times:0 ,on_off:0)
User.create(email:"7@gmail.com",password:"1111111a",name:"7sitirou",slack:"7sitirou_slack",period: 80,style:"2",team_id:"G",output_times:0 ,on_off:0)
User.create(email:"admin@gmail.com",password:"1111111a",name:"管理者",slack:"管理者",period: 80,style:"2",team_id:"H",output_times:0 ,on_off:0,admin: 1)

# ===================================
# テスト投稿
# ===================================
# 質問　基礎
Post.create(title:"ログインの仕方がわかりません　",content:"https://gyazo.com/3a77e200a2bc6175d1446665ed4cc793\nどうすればログインできますか",lesson_id:1,input_user_id:"1",output_user_id: "",next_input_user_id:"",next_output_user_id:"",input_or_output:0,start_input_or_output:0 ,first_update_date:"",created_at:"2020-05-16 13:00:01",updated_at:"")
Post.create(title:"webの仕組みがわかりません　",content:"webおしえてください 1",lesson_id:5,input_user_id:"1",output_user_id: "",next_input_user_id:"",next_output_user_id:"",input_or_output:0,start_input_or_output:0 ,first_update_date:"",created_at:"2020-05-16 14:00:01",updated_at:"")
Post.create(title:"全体がわかりません　",content:"全体増わかりません 1",lesson_id:6,input_user_id:"1",output_user_id: "",next_input_user_id:"",next_output_user_id:"",input_or_output:0,start_input_or_output:0 ,first_update_date:"",created_at:"2020-05-16 14:00:01",updated_at:"")
Post.create(title:"rubyがわかりまえん　",content:"```ruby\ndef new\nPost.new\nend\n```\nrubyおしえてください 3",lesson_id:23,input_user_id:"2",output_user_id: "",next_input_user_id:"",next_output_user_id:"",input_or_output:0,start_input_or_output:0 ,first_update_date:"",created_at:"2020-05-16 15:00:01",updated_at:"")
Post.create(title:"rubyがわかりまえんb　",content:"```ruby\ndef new\nPost.new\nend\n```\nrubyおしえてください 3",lesson_id:23,input_user_id:"3",output_user_id: "",next_input_user_id:"",next_output_user_id:"",input_or_output:0,start_input_or_output:0 ,first_update_date:"",created_at:"2020-05-16 15:00:01",updated_at:"")
Post.create(title:"rubyがわかりまえんc　",content:"```ruby\ndef new\nPost.new\nend\n```\nrubyおしえてください 4",lesson_id:23,input_user_id:"4",output_user_id: "",next_input_user_id:"",next_output_user_id:"",input_or_output:0,start_input_or_output:0 ,first_update_date:"",created_at:"2020-05-16 16:00:01",updated_at:"")
Post.create(title:"レスポンスについて　",content:"レスポンスおしえてください 5",lesson_id:40,input_user_id:"5",output_user_id: "",next_input_user_id:"",next_output_user_id:"",input_or_output:0,start_input_or_output:0 ,first_update_date:"",created_at:"2020-05-16 17:00:01",updated_at:"")
Post.create(title:"html わかりません　",content:"htmlおしえてください 5",lesson_id:12,input_user_id:"5",output_user_id: "",next_input_user_id:"",next_output_user_id:"",input_or_output:0,start_input_or_output:0 ,first_update_date:"",created_at:"2020-05-16 17:00:01",updated_at:"")
Post.create(title:"html わかりませんb　",content:"htmlおしえてください 6",lesson_id:12,input_user_id:"6",output_user_id: "",next_input_user_id:"",next_output_user_id:"",input_or_output:0,start_input_or_output:0 ,first_update_date:"",created_at:"2020-05-16 17:00:01",updated_at:"")

# 質問　応用
Post.create(title:"検索の仕方がわかりません　",content:"どうすれば検索できますか 1",lesson_id:84,input_user_id:"1",output_user_id: "",next_input_user_id:"",next_output_user_id:"",input_or_output:0,start_input_or_output:0 ,first_update_date:"",created_at:"2020-05-16 13:00:01",updated_at:"")
Post.create(title:"検索の仕方がわかりませんb　",content:"どうすれば検索できますか 2",lesson_id:84,input_user_id:"2",output_user_id: "",next_input_user_id:"",next_output_user_id:"",input_or_output:0,start_input_or_output:0 ,first_update_date:"",created_at:"2020-05-16 13:00:01",updated_at:"")
Post.create(title:"読みやすいコードがわかりません　",content:"よみやすいコードがわかりません",lesson_id:85,input_user_id:"1",output_user_id: "",next_input_user_id:"",next_output_user_id:"",input_or_output:0,start_input_or_output:0 ,first_update_date:"",created_at:"2020-05-16 13:00:01",updated_at:"")

# 質問　最終
Post.create(title:"パンくずってなに　",content:"なんですか 1",lesson_id:190,input_user_id:"1",output_user_id: "",next_input_user_id:"",next_output_user_id:"",input_or_output:0,start_input_or_output:0 ,first_update_date:"",created_at:"2020-05-16 13:00:01",updated_at:"")
Post.create(title:"パンくずってなにb　",content:"なんですか 3",lesson_id:190,input_user_id:"3",output_user_id: "",next_input_user_id:"",next_output_user_id:"",input_or_output:0,start_input_or_output:0 ,first_update_date:"",created_at:"2020-05-16 13:00:01",updated_at:"")
Post.create(title:"コメントってなに",content:"なんですか 4",lesson_id:189,input_user_id:"4",output_user_id: "",next_input_user_id:"",next_output_user_id:"",input_or_output:0,start_input_or_output:0 ,first_update_date:"",created_at:"2020-05-16 13:00:01",updated_at:"")


# 教えます　基礎
Post.create(title:"ログインの仕方おしえます",content:"https://gyazo.com/3a77e200a2bc6175d1446665ed4cc793\nログインおしえます1",lesson_id:1,input_user_id:"",output_user_id: "",next_input_user_id:"",next_output_user_id:"1",input_or_output:1,start_input_or_output:1 ,first_update_date:"",created_at:"2020-05-16 13:00:01",updated_at:"")
Post.create(title:"webの仕組みおしえます　",content:"webおしえます",lesson_id:5,input_user_id:"",output_user_id: "",next_input_user_id:"",next_output_user_id:"1",input_or_output:1,start_input_or_output:1 ,first_update_date:"",created_at:"2020-05-16 14:00:01",updated_at:"")
Post.create(title:"全体おしえます",content:"全体おしえます",lesson_id:6,input_user_id:"",output_user_id: "",next_input_user_id:"",next_output_user_id:"2",input_or_output:1,start_input_or_output:1 ,first_update_date:"",created_at:"2020-05-16 14:00:01",updated_at:"")
Post.create(title:"rubyおしえます",content:"```ruby\ndef new\nPost.new\nend\n```\nruby1おしえます",lesson_id:23,input_user_id:"",output_user_id: "",next_input_user_id:"",next_output_user_id:"3",input_or_output:1,start_input_or_output:1 ,first_update_date:"",created_at:"2020-05-16 15:00:01",updated_at:"")
Post.create(title:"rubyおしえます2　",content:"```ruby\ndef new\nPost.new\nend\n```\nruby2おしえます",lesson_id:23,input_user_id:"",output_user_id: "",next_input_user_id:"",next_output_user_id:"4",input_or_output:1,start_input_or_output:1 ,first_update_date:"",created_at:"2020-05-16 15:00:01",updated_at:"")
Post.create(title:"rubyおしえます3　",content:"```ruby\ndef new\nPost.new\nend\n```\nruby3おしえます",lesson_id:23,input_user_id:"",output_user_id: "",next_input_user_id:"",next_output_user_id:"5",input_or_output:1,start_input_or_output:1 ,first_update_date:"",created_at:"2020-05-16 16:00:01",updated_at:"")
Post.create(title:"レスポンスおしえます　",content:"レスポンスおしえます",lesson_id:40,input_user_id:"",output_user_id: "",next_input_user_id:"",next_output_user_id:"6",input_or_output:1,start_input_or_output:1 ,first_update_date:"",created_at:"2020-05-16 17:00:01",updated_at:"")

#　教えます　応用
Post.create(title:"発信のしかた教えます　",content:"発信おしえます2",lesson_id:80,input_user_id:"",output_user_id: "",next_input_user_id:"",next_output_user_id:"2",input_or_output:1,start_input_or_output:1 ,first_update_date:"",created_at:"2020-05-16 13:00:01",updated_at:"")
Post.create(title:"発信のしかた教えますb　",content:"発信おしえます3",lesson_id:80,input_user_id:"",output_user_id: "",next_input_user_id:"",next_output_user_id:"3",input_or_output:1,start_input_or_output:1 ,first_update_date:"",created_at:"2020-05-16 13:00:01",updated_at:"")
Post.create(title:"リファクタリング",content:"リファクタリングおしえます2",lesson_id:86,input_user_id:"",output_user_id: "",next_input_user_id:"",next_output_user_id:"2",input_or_output:1,start_input_or_output:1 ,first_update_date:"",created_at:"2020-05-16 13:00:01",updated_at:"")
Post.create(title:"正規表現",content:"正規表現おしえます4",lesson_id:87,input_user_id:"",output_user_id: "",next_input_user_id:"",next_output_user_id:"4",input_or_output:1,start_input_or_output:1 ,first_update_date:"",created_at:"2020-05-16 13:00:01",updated_at:"")

# 教えます　最終
Post.create(title:"パンくず　",content:"おしえます 1",lesson_id:190,input_user_id:"",output_user_id: "",next_input_user_id:"",next_output_user_id:"1",input_or_output:1,start_input_or_output:1 ,first_update_date:"",created_at:"2020-05-16 13:00:01",updated_at:"")
Post.create(title:"パンくずb　",content:"おしえます 3",lesson_id:190,input_user_id:"",output_user_id: "",next_input_user_id:"",next_output_user_id:"3",input_or_output:1,start_input_or_output:1,first_update_date:"",created_at:"2020-05-16 13:00:01",updated_at:"")
Post.create(title:"コメント",content:"おしえます 4",lesson_id:189,input_user_id:"",output_user_id: "",next_input_user_id:"",next_output_user_id:"4",input_or_output:1,start_input_or_output:1 ,first_update_date:"",created_at:"2020-05-16 13:00:01",updated_at:"")


#質問から教えます 
# 基礎
Post.create(title:"パスワードがわかりません　",content:"パスワード再発行できますか1←2",lesson_id:1,input_user_id:"1",output_user_id: "2",next_input_user_id:"",next_output_user_id:"1",input_or_output:1,start_input_or_output:0 ,first_update_date:"2020-05-16 14:00:01",created_at:"2020-05-16 13:00:01",updated_at:"")
# 応用
Post.create(title:"jsわかりません　",content:"わかりません2←3",lesson_id:1,input_user_id:"2",output_user_id: "3",next_input_user_id:"",next_output_user_id:"2",input_or_output:1,start_input_or_output:0 ,first_update_date:"2020-05-16 14:00:01",created_at:"2020-05-16 13:00:01",updated_at:"")









