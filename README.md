# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nick_name          | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association
- has_many :recipes

## recipeテーブル

| Column     | Type      | Options                        |
| ---------- | --------- | ------------------------------ |
| image      | text      | null: false                    |写真
| dish       | string    | null: false                    |料理名
| persons    | string    | null: false                    |人数
| material   | string    | null: false                    |材料
| amount     | string    | null: false                    |分量
| make_one   | text      | null: false                    |工程１
| make_two   | text      | null: false                    |工程２
| make_three | text      |                                |工程３
| make_four  | text      |                                |工程４
| make_five  | text      |                                |工程５
| user       | references| null: false, foreign_key: true |

### Association
- belongs_to :user


# アプリケーション名

easy-cook!

# アプリケーション概要

5つ以内の工程の料理のレシピを共有できる。時間短縮や簡単に済ませたい時の料理のレシピアプリ。

# URL

https://easy-cook.onrender.com

# テスト用アカウント

・　Basic認証パスワード　：　2222

・　Basic認証ID ：　admin

・ メールアドレス : 123@123

・　パスワード : 111aaa



# 利用方法

## レシピ投稿

1.トップページのヘッダーからユーザーの新規登録を行う

2.　トップページの"レシピを投稿する"ボタンから投稿ページに遷移してレシピ（レシピ画像（完成後写真）、料理名、人数、材料、分量、作り方１〜５（１、２は必須））を入力したあとに"このレシピで投稿する！"ボタンを押し、自分のレシピを投稿する。

3.トップページに戻ると投稿されたレシピが一覧として表示される

## レシピを見る
　1.トップページに記載されている気になるレシピをクリックしてレシピ詳細画面に移動する（非ログイン状態でも見られる）
 
2.詳細画面のレシピを参考に料理を作る
 
# アプリケーションを作成した背景

料理を作る際にレシピの工程が多いと調理時間がかかると感じたり、文章をたくさん読む手間がかかってしまい諦めてしまうことがあった。

なので、簡単に手短な工程ですむレシピサイトがあれば良いと思いレシピアプリを開発した。

# 洗い出した要件

https://docs.google.com/spreadsheets/d/1I9YFbt13al3qHGX6IwO8CQ-PAvXvOQLXVROvl8yBqBM/edit#gid=982722306

# 実装した機能についての画像やGIFおよびその説明

# 実装予定の機能

自分のお気に入りレシピ機能を登録できるように、マイページとお気に入りレシピ機能を作成予定

# データベース設計

![recipe](https://github.com/AYUMIAYUMI/easy-cook/assets/119142344/ff6a7842-f562-4978-9483-d2e130469886)


# 画面遷移図

![recipe2](https://github.com/AYUMIAYUMI/easy-cook/assets/119142344/c93c7cfe-345a-4e69-ac17-9ef0ca62b0b1)

# 開発環境

 Ruby
 
 Ruby on Rails
 
 MySQL
 
 Github
 
 AWS
 
 Visual Studio Code


# ローカルでの動作方法



# 工夫したポイント


