# アプリ名：fitO

### URL:http://54.238.67.129

#### テストユーザー　email:1@gmail.com　　password:1111111a

#### 管理者　email:admin@gmail.com　　password:1111111a

### ・開発環境（ruby、 ruby on rails、mac、mysql、AWS）

### ・概要(プログラミングスクール受講生のアウトプット支援アプリ)

### ・制作背景
　プログラミングスクールを通う中で、多くの挫折者を目の当たりにした。挫折の理由は**自信をなくしたこと**が理由であると感じる。最も効果的に自分の成長を感じることができ、尚且つ効率的に知識を定着させる方法は**「他者に教える（アウトプットする）すること」**であると考え、それを支援するためのアプリを作成しようと思い立った。
 
### ・使用方法

### 機能説明動画
https://youtu.be/qzOHOgSmRt0

#### ①掲示板は、カリキュラムごとに紐づいて管理されており、「教えます（アウトプット)掲示板」と「質問（インプット)掲示板」の2種類の掲示板から構成されている。

![demo](https://i.gyazo.com/266a18d2900040bed3ca0301cbead02a.gif)

②教えたい(アウトプット)したい人は、「質問（インプット)掲示板」を確認し、教えたい内容の質問があれば投稿者に連絡をとり教えてあげる。

![demo](https://i.gyazo.com/bbb762a70f17c1e1a6b2aa7e45ea6068.gif)

③教えてもらった人は、マイページから、教えてくれた人のidを入力する。

![demo](https://i.gyazo.com/8924f86f929affa59661c9f20037aeaf.gif)


④するとその投稿は「質問（インプット）掲示板」から、「教えます（アウトプット）掲示板」に移動する。

[![Image from Gyazo](https://i.gyazo.com/ee8a2d0adfa230d9b47509666fc291d2.png)](https://gyazo.com/ee8a2d0adfa230d9b47509666fc291d2)

⑤質問した人は、今度は教える側の立ち場となり、投稿を見て質問してきた別の人に教えてあげ、教えられた人が投稿者のidを入力したら「教えます（アウトプット）掲示板」から削除される。（投稿者以外の名前は弾く）

![demo](https://i.gyazo.com/4ca153b48f4a8da97f340c7dece057c4.gif)]

⑥マイページから、自分の投稿中の投稿や、過去のインプット、アウトプット履歴を確認することができる。

![demo](https://i.gyazo.com/7d8dd0511f0921395ad969ad89ec6f4f.gif)

⑦履歴からメモを作成し、備忘録として利用できる。

![demo](https://i.gyazo.com/6a28f089f9cc4b06bd053348ed095476.gif)

⑧ランキング機能を実装。条件で絞ることも可能

![demo](https://i.gyazo.com/767e5956847265c2fa3ab52d3153c3b2.gif)

⑧特定のユーザーでログインすると管理者モードとなり、データーベースにアクセスすることが可能となる。

![demo](https://i.gyazo.com/632649f5e1e406f721a7270352e21034.gif)

・工夫した点

①質問（インプット）掲示板」に掲載した内容を教えてもらった場合、その投稿は「教えます（アウトプット）掲示板」に移行する。教えてもらった内容は誰かに教えないと「教えます（アウトプット）掲示板」から、その投稿が削除されることはない。つまりインプットした（教えてもらった）場合は、必ずその内容を誰かにアウトプット（教えなければ）しなければならないようになっている。

②教室に出席した際は、ヘッダーのボタンをクリックし、オンにする。そうすることにより、自分の投稿に出席中の表示がなされる。ログアウト すると自動でオフとなるまた、ログイン後１０時間でログアウトするので切り忘れても問題ないようにしている。

![demo](https://i.gyazo.com/f6bf77834f657dd28030ed62282bb821.png)

③各ページごとにhintを設けて、ユーザーが確認することができる。

![demo](https://i.gyazo.com/5f9524ee552f79ff86dbc5f51cd33aba.png)

④マークダウン 形式でコードブロックを挿入可能とした。

![demo](https://i.gyazo.com/fcbc923e2957b87ca57b4ab37372dedb.png)
