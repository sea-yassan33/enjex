# アプリケーション名
enjex_app

# アプリケーション概要
youtube等にアップロードされているエクササイズ動画を投稿し、ユーザー同士でシェアする事が出来ます。また、投稿した内容をコメントし合ったり、応援機能を使用し、投稿者を応援する事が出来ます。

アプリ名の由来は「enjoy」と「exercise」の「enjex」造語です。「楽しんで運動して頂きたい」とそんな思いで名前にしました。

# URL

# テスト用アカウント

# 利用方法
## Top画面
[![Image from Gyazo](https://i.gyazo.com/7756c7df5dea26a67989952d8fd64b06.jpg)](https://gyazo.com/7756c7df5dea26a67989952d8fd64b06)

## 動画コンテンツ共有画面
[![Image from Gyazo](https://i.gyazo.com/bc4fdae5eb2a2b135be9ae9d57a42920.gif)](https://gyazo.com/bc4fdae5eb2a2b135be9ae9d57a42920)

# アプリケーションを作成した背景
運動している方、運動を何からしたら良いかわからない方、運動習慣を身につけたい方を対象に手助けするアプリを作成したいと思いました。

運動目標を設定する事でモチベーションが身に付きます。そして、それを共有したり、応援してもらう事でモチベーションが維持できると思います。

# 実装した機能についての画像やGIFおよびその説明
## ユーザー管理機能
1\.Top画面にて新規登録ボタンを押すと、登録画面に遷移します。
[![Image from Gyazo](https://i.gyazo.com/a149ddeed673b609afba777882ad2c28.png)](https://gyazo.com/a149ddeed673b609afba777882ad2c28)

2\.ユーザー登録したら、ログインやログアウトが出来ます。
[![Image from Gyazo](https://i.gyazo.com/eafe61e79f7bc6f4945dd6f15733311c.png)](https://gyazo.com/eafe61e79f7bc6f4945dd6f15733311c)

## 動画コンテンツ投稿機能
1\.動画URL共有ボタンで登録画面に遷移
[![Image from Gyazo](https://i.gyazo.com/34f93013ccd8247bd451cd9529a4795d.png)](https://gyazo.com/34f93013ccd8247bd451cd9529a4795d)
2\.登録画面にてタイトル、youtubeの共有URL、カテゴリを入力し、登録します。

## コメント機能
1\.1つの動画コンテンツに対してコメントが出来、互いにコミュニケーションが出来ます。

## いいね機能(Good Luck!)
1\.共有した動画コンテンツに対していいね機能を追加しました。
2\.応援する意味を込めて、いいねの削除機能は搭載していません。
3\.１つの動画共有コンテンツに対して1ユーザーが行えるいいねは1回のみ、2回目は押しても登録されない仕様になっています。

# 実装予定の機能
- 専門家（トレーナー）限定のユーザー管理機能
- 専門家（トレーナー）の詳細画面
- 専門家（トレーナー）のブログ投稿機能
- 一般ユーザーと専門家を見分ける様にアイコン表示で区別

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/df3ad40bfa6d9409b362c9338f0e6568.png)](https://gyazo.com/df3ad40bfa6d9409b362c9338f0e6568)

# 画面遷移
[![Image from Gyazo](https://i.gyazo.com/210a72ed89d3ea13d422f56b1f34b6c1.png)](https://gyazo.com/210a72ed89d3ea13d422f56b1f34b6c1)

# 開発環境

### フロントエンド
- HTML
- CSS
- JavaScript
- Bootstrap

### バックエンド
- Ruby
- Rails

### データベース
- MySQL(ローカル環境)

# ローカルでの動作方法
以下のコマンでを順に実行
```
% git clone [URL]
% cd []
% bundle install
% yarn install
```