# **タスク管理アプリ**

## サイト概要
* 家庭内のタスク管理が必要となり、既製品で良いツールがなかったため、自分が使いやすいタスク管理ツールを作成


## 設計書
  ### ER図、画面遷移図
  https://drive.google.com/file/d/1vLhn5NcQjQFnphxyt-p0YYnSIJiV7y3g/view?usp=sharing

  ### アプリケーション詳細設計、テーブル定義書
  https://docs.google.com/spreadsheets/d/12EKfDhwEcBoZ8rMS-Wa1ZQh2m-GT3vC2mXp58FLYVPg/edit?usp=sharing

## プロジェクト管理表
  https://docs.google.com/spreadsheets/d/1CI-nifqNPHLXFYkUlxeph0NNrj-JOugv6z2y4dwi2zk/edit?usp=sharing

## 使用方法

  ### ログイン

 メールアドレスとパスワードでログインができる

 <img width="603" alt="タスク管理ーログイン" src="https://user-images.githubusercontent.com/61017515/99226543-4ae39400-282d-11eb-8988-9cc11f7e1d76.png">

  ### タスクの追加

   <img width="1189" alt="タスク管理説明１" src="https://user-images.githubusercontent.com/61017515/99226639-6cdd1680-282d-11eb-81d5-222c534aa235.png">

  ### タスクの編集

   <img width="1190" alt="タスク管理説明２" src="https://user-images.githubusercontent.com/61017515/99226703-89794e80-282d-11eb-8f04-47b9649f5046.png">

  ### 招待画面

   招待したい人のメールアドレスを入力すると招待メールを送信できる  
   注意：現在作成者しかメールを送信できません。

   <img width="500" alt="タスク管理ー招待" src="https://user-images.githubusercontent.com/61017515/99226765-a57cf000-282d-11eb-824a-6683e7302371.png">

  ### 招待メール内容

   招待を受けた人の招待メール内容

   <img width="892" alt="タスク管理ー招待メール" src="https://user-images.githubusercontent.com/61017515/99226837-c8a79f80-282d-11eb-8aa6-69ffd79add5a.png">

  ### アカウント発行

   招待メールからリンクすることができる。  
   名前、パスワードを入れてアカウントを発行すると自動的にログインする。  
   次回からはログイン画面でログインできる

   <img width="499" alt="タスク管理ーアカウント発行" src="https://user-images.githubusercontent.com/61017515/99227116-289e4600-282e-11eb-837a-a8b933f499c8.png">


## 機能
 CSSフレームワーク
 * jquery-rails
 * jquery-turbolinks
 * bootstrap-sass

 デバイス
  ログイン、ログアウト
  * devise
  招待
  * devise_invitable
  エラー、バリデーション日本語化
  * rails-i18n
  * devise-i18n

 * 新規投稿、編集、更新、削除をAjaxにて非同期通信
 * タスクlistに進行度（未着手、着手中、完了）  
 ボタンを追加押すと、その進行度のタスクのみ表示(jQuery)
 * ファイル添付機能（Active Storage）
 * 編集画面にてファイル添付を削除（非同期通信）

 モバイル対応（レスポンシブ）
 * viewport
 * メディアクエリ

 本番環境
 * heroku
 * メール配信（MailGun）

 https://atu-task-app.herokuapp.com/

 テストアカウント  
 mail: test1@test.com  
 password: 123456


## 所要時間
  62時間
