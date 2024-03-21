## アプリケーション名
メモマップ！お気に入りの場所を記録しよう！

## アプリケーション概要
お気に入りの場所にもう一度行きたいときに、地図つきで記録を残しておくと、すぐに行きたい場所を思い出すことができる

## URL
https://memo-map-app.onrender.com/

## テスト用アカウント
・Basic認証パスワード：ccrow

・Basic認証ID：1221

・メールアドレス：ccrow@gmail.com

・パスワード：kira0512

## 利用方法
### お気に入りスポット投稿
1. トップページ（一覧ページ）のヘッダーからユーザー新規登録を行う
2. 新規投稿ボタンから、お気に入りスポット名とコメント、画像を入力し投稿する。画像は任意
3. 一覧ページに投稿したスポット名が表示され、スポット名をクリックすると地図、画像、コメントが確認できるようになる

### スポットの共有
1. 一覧ページには投稿者名が記載されており、他の人の投稿を見ることができる
2. 共有したいスポットや写真を他の人に見せることができる

## アプリケーションを作成した背景
スマホのアルバムを見返すしていたときに、この写真はどこの場所だろう、ここまた行ってみたいなと思っても場所の名前が分からず困ることがあった。
写真の場所にいきたいと思ってもその場所を忘れてしまうという課題を分析したところ、「場所はいつでも思い出せると慢心していること」が真因であると仮説をたてた。同様の問題を抱えている方も多いと推測し、真因を解決するために、お気に入りスポットを地図とともに記録できるアプリを開発することにした。また、スポット共有機能を実装することにより、未知の世界を探求し、新たな体験のきっかけを作り出す場にしたいと思った。

## 洗い出した要件
https://docs.google.com/spreadsheets/d/1kwqFta0C9vtsV74f3kp42rPwFPkBRZJi30nvM17rADk/edit?usp=sharing

＜ ↑ URLをそのまま貼り付けるのではなく、文字としてリンクを形成する方法を教えて欲しいです＞

## 実装した機能についての画像やGIFおよびその説明
[![Image from Gyazo](https://i.gyazo.com/968747ece35b9c10d3f053b461d586ff.png)](https://gyazo.com/968747ece35b9c10d3f053b461d586ff)
投稿ページにて上記のように内容を登録し、「投稿する」を押すと投稿一覧ページに遷移し

[![Image from Gyazo](https://i.gyazo.com/f3f3ba5bc53fdfdd86035acc725d7f3b.png)](https://gyazo.com/f3f3ba5bc53fdfdd86035acc725d7f3b)
投稿一覧機能でこのように表示される。
投稿された画像をクリックすると投稿詳細ページへ遷移し、

[![Image from Gyazo](https://i.gyazo.com/b87090b731a0b163f6caad568de8de8b.jpg)](https://gyazo.com/b87090b731a0b163f6caad568de8de8b)
投稿詳細ページでは上記のように登録した内容とスポットの位置がグーグルマップで表示される。

## 実装予定の機能
・スポット検索機能

・スポットいいね登録機能

・いいねの数を参照したスポットランキング機能

## データベース設計
[![Image from Gyazo](https://i.gyazo.com/22d464eaee01a4e1faf2b9904c3e9efb.png)](https://gyazo.com/22d464eaee01a4e1faf2b9904c3e9efb)

## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/2be5e5dabbc568cb63f2aec1619890c1.png)](https://gyazo.com/2be5e5dabbc568cb63f2aec1619890c1)

## 開発環境
・フロントエンド

・バックエンド

・インフラ

・テスト

・テキストエディタ

・Geocoding API

・Maps JavaScript API

## ローカルでの動作方法
% git clone https://github.com/CielSA0512/memo_map_app.git

% cd memo_map_app

% bundle install

## 工夫したポイント
・レスポンシブデザインを採用している点

・GoogleAPIを利用して、投稿内容に応じた地図情報を出力することができる点

＜要検討 / 書き方を教えて頂けると助かります＞

## 改善点
・投稿検索機能がないため、投稿内容が増えると自分が見たい投稿内容を探すのが難しくなる点

・現在は写真が一枚しか投稿できないため、アルバムという役割を果たせていない点

・お気に入り登録機能やコメント機能がないため、ユーザー間で交流を深めることができない点

・投稿に至るまでのガイドがないため、直感的に操作しやすいアプリとはいいがたい点

## 製作時間
２週間程度